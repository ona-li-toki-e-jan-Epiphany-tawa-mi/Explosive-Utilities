#!/usr/bin/env python3

import logging
from shutil import make_archive
from os import makedirs
import os.path as path

################################################################################
# This file is used to package the data and resource packs in zip files.
#
# Run this script in the project directory. The packaged packs will appear in
#   {output_directory}.
#

################################################################################
# Config START                                                                 #
################################################################################
# The relative path from the project directory to the data pack's directory.
data_pack_directory = 'ExplosiveUtilities-DP'
# The relative path from the project directory to the resource pack's directory.
resource_pack_directory = 'ExplosiveUtilities-RP'
# The relative path from the project directory to the file to output the 
#   packaged data pack pack to. Do not include a file extension.
data_pack_output_base_file_path = 'dist/ExplosiveUtilities-Datapack'
# The relative path from the project directory to the file to output the 
#   packaged resource pack to. Do not include a file extension.
resource_pack_output_base_file_path = 'dist/ExplosiveUtilities-Resourcepack'
# A version specifier to add to the end of the outputted files.
explosive_utilities_version = 'V0.2.0'

logging_level = logging.NOTSET
################################################################################
# Config END                                                                   #
################################################################################



def main():
    logging.basicConfig(level=logging_level, format='[%(asctime)s] %(levelname)s: %(message)s')


    if path.exists(data_pack_directory):
        logging.info(f'Packaging data pack directory "{path.abspath(data_pack_directory)}"')
        
        output_path = data_pack_output_base_file_path + '-' + explosive_utilities_version
        make_archive(output_path, 'zip', data_pack_directory, verbose=True)

        logging.info(f'Outputted packaged data pack -> {path.abspath(output_path)}')
    else:
        logging.error(f'Could not locate directory {path.abspath(data_pack_directory)}! Skipping data pack packaging')

    if path.exists(resource_pack_directory):
        logging.info(f'Packaging resource pack directory "{path.abspath(resource_pack_directory)}"')

        output_path = path.join(resource_pack_output_base_file_path + '-' + explosive_utilities_version)
        make_archive(output_path, 'zip', resource_pack_directory, verbose=True)

        logging.info(f'Outputted packaged resource pack -> {path.abspath(output_path)}')
    else:
        logging.error(f'Could not locate directory {path.abspath(resource_pack_directory)}! Skipping resource pack packaging')

if __name__ == '__main__':
    main()
