# nvim-todo-checkbox

A Neovim plugin that allows users to easily manage their to-do lists by appending checkbox icons to lines in `.todo` files.

## Installation

To install the `nvim-todo-checkbox` plugin, you can use your preferred plugin manager. For example, if you are using `packer.nvim`, add the following line to your configuration:

```lua
use 'yourusername/nvim-todo-checkbox'
```

After adding the plugin, run the installation command for your plugin manager.

## Usage

Once the plugin is installed, you can open any `.todo` file in Neovim. To append a checkbox icon (`[ ]`) at the beginning of the current line, simply press `Alt + T`. This will insert the checkbox icon, allowing you to easily track your tasks.

## Key Mappings

- `Alt + T`: Append a checkbox icon to the start of the current line in a `.todo` file.

## Configuration

This plugin does not require any additional configuration. It will automatically detect `.todo` files and set the appropriate filetype.

## Contributing

Contributions are welcome! If you have suggestions for improvements or new features, feel free to open an issue or submit a pull request.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.