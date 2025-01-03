# Image slider

## How to install?
Download the zipped source code from `Release` tab and upload it in the modules section in prestashop. 
In order for the module to create video posters (better performance. The browser will load the poster image first before downloading the video. [Explanation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/video#poster)) `ffmpeg` needs to be installed on the machine. Otherwise the module won't create posters. But that won't affect the functionality of the module. Videos will still be handled

**How to install `FFMPEG`?**
```
sudo apt update && sudo apt upgrade
```
and then
```
sudo apt install ffmpeg
```
## About

Add sliding images to your homepage to welcome your visitors in a visual and friendly way.

## Compatibility

PrestaShop: `1.7.5.0` or later

## Multistore compatibility

This module is not compatible with the multistore :x: <br/>
It means that its configuration applies for all stores.

## How to test

Link to specs : https://docs.prestashop-project.org/functional-documentation/functional-documentation/ux-ui/back-office/improve/modules/image-slider-ps_imageslider

Settings
- Configure Settings and check the results on FO
Slides list
- CRUD
- Enable/disable
- Reposition

## Reporting issues

You can report issues with this module in the main PrestaShop repository. [Click here to report an issue][report-issue]. 

## Contributing

PrestaShop modules are open source extensions to the [PrestaShop e-commerce platform][prestashop]. Everyone is welcome and even encouraged to contribute with their own improvements!

Just make sure to follow our [contribution guidelines][contribution-guidelines].

## License

This module is released under the [Academic Free License 3.0][AFL-3.0] 

[report-issue]: https://github.com/PrestaShop/PrestaShop/issues/new/choose
[prestashop]: https://www.prestashop.com/
[contribution-guidelines]: https://devdocs.prestashop.com/1.7/contribute/contribution-guidelines/project-modules/
[AFL-3.0]: https://opensource.org/licenses/AFL-3.0
