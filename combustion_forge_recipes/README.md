# Combustion Forge Recipe Generation

The recipes for the combustion forge are written in JSON files with a similar format to vanilla recipes.

However, these files on their own are useless, and must be compiled into actual code inside function files to operate.

In order to run the compliation script, you will need [Python 3](https://www.python.org "Python's website") and [jsonschema](https://pypi.org/project/jsonschema "jsonschema on PyPI") installed. You can install jsonschema from pip using the following command:

```console
pip install jsonschema
```

## Adding Recipes To Explosive Utilites

To add recipes to Explosive Utilites, place the recipe files inside `{PROJECT_ROOT}/combustion_forge_recipes/recipes` within the relavent subdirectory.

Then, in the root directory of the project, run one the following command:

```console
python3 combustion_forge_recipes/compile_recipes.py
``` 

## Adding Recipes Through Your Own Datapack

To add recipes to the combustion forge through your own datapack, firstly, create a directory in your project to store the recipes and compiler in, for this example we will call it `combustion_forge_recipes`. Then, copy over [compile_recipes.py](compile_recipes.py) and [recipe_schema.json](recipe_schema.json) into `combustion_forge_recipes`. Place your custom recipes within either that directory, or a subdirectory within.

Next, you will need to change some of the config variables in the `compile_recipes.py` to suit your project, namely:
- **combustion_forge_recipe_directory** - set this to be the relative path from the root directory of your project to the directory containing your custom recipes.
- **recipe_output_directory** - set this to be the relative path from `combustion_forge_recipe_directory` to the directory in your datapack that you would like the compiled recipe function files to go. For example, *Example-DP/data/exampledatapack/functions/combustion_forge_recipes*.
- **recipe_schema_file_path** - set this to be the relative file path from `combustion_forge_recipe_directory` to the recipe schema file you copied earlier.
- **recipe_function_tag_file_path** - the compiler will generate a function tag that contains all the generated recipe functions. set this to be the relative file path from `combustion_forge_recipe_directory` to the file you would like to to output to. For example, *Example-DP/data/exampledatapack/tags/functions/combustion_forge_recipes.json*.
- **recipe_function_directory_id** - set this to be the function directory id that the recipe function files are being outputted to. Going with the example for `recipe_output_directory`, this would be *exampledatapack:combustion_forge_recipes*.

Additionally, you might want to temporarily set **logging_level** to `logging.NOTSET` to check if your recipes are being compiled and outputted correctly.

Once you've ensured that is all working correctly, you will need to add the generated function tag with the recipe functions into Explosive Utilities' main recipe function tag. To do so, create the file *xplsvtlts/tags/functions/combustion_forge_recipes/recipes.json* in the data directory of your datapack (going with the previous examples, the full path from the project root would be *Example-DP/data/xplsvtlts/tags/functions/combustion_forge_recipes/recipes.json*.) In this function tag file, add the function id tag with the generate recipes. The file should look something like this:

```json
{
    "values": [
        "#xplsvtlts:exampledatapack/combustion_forge_recipes"
    ],
    "replace": false
}
```

Make sure to set **replace** to `false` (`false` is default but better safe than sorry) to not override the recipes from Explosive Utilities and other datapacks. If you wish to override the recipes from Explosive Utilities, set **values** to an empty list and **replace** to `true` in  *xplsvtlts/tags/functions/combustion_forge_recipes/generated.json* within the data directory of datapack.

Afterwards, reload and test your recipes in the combustion forge. If they don't work, I wish you luck in debugging hell ;).