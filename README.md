
# Dr-pharma
### Table of contents
- [Application structure](#project-structure)
- [Figma design ](#figma-design)


### Figma design 

https://www.figma.com/file/gzXxLHdPKNsQrNsyKj6MrQ/DR.pharma2?type=design&node-id=0%3A1&mode=design&t=miM5bKQPHJumy4MX-1

### Application structure

your application structure should look like this:

```
├── Android                         - It contains files required to run the application on an Android platform.
├── assets                          - It contains all images and fonts of your application.
├── iOS                             - It contains files required to run the application on an iOS platform.
├── lib                             - The most important folder in the application, used to write most of the Dart code.
    ├── main.dart                   - Starting point of the application
    ├── core
    │   ├── app_export.dart         - It contains commonly used file imports
    │   ├── constants               - It contains the static constant class file
    │   └── utils                   - It contains common files and utilities of the application
    │        └──widgets             - It contains all custom widget classes
    ├── Features                    - It contains widgets on the screens
    ├── Service                     - It contains all the helper classes of the application
    └── config                  
         ├── theme             - It contains app theme and decoration classes
         └── routes            - It contains all the routes of the application
```



