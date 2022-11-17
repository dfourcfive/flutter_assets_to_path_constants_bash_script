# flutter_assets_to_path_constants_bash_script

A simple bash script that eliminate the need to create a constant file and declare constants that contains the path of your asset for each asset in your project

# Usage

## Note 
- For windows user use bash to run the script : `bash ./flutter_assets_to_path_constants_bash_script.sh`

## Commands
```bash
sh flutter_assets_to_path_constants_bash_script.sh YOUR_ASSETS_FOLDER_PATH DESIRED_OUTPUT_FILE_PATH DESIRED_OUTPUT_FILENAME
```

- If no arguments are given , the script will use default values , extract all assets inside the `./assets` folder and create the ouput `file assets_constants.dart` inside the `./lib` folder


# Additional
All kinds of contribution is welcomed
