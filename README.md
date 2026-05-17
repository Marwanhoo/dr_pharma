
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



## OnBoarding Screen
<img src="https://github.com/Marwanhoo/flutter_dr.pharma/assets/125823028/ce18f866-2877-49e4-ae5b-b651f08623c7" alt="onBoarding screen" width="300">

## Login Screen
<img src="https://github.com/Marwanhoo/flutter_dr.pharma/assets/125823028/173e72fb-4d99-4def-8642-a17b6c5fafc8" alt="login screen" width="300">

## SignUp Screen
<img src="https://github.com/Marwanhoo/flutter_dr.pharma/assets/125823028/9527af2b-5f14-42b5-89d6-d89ee43a1554" alt="sign up screen" width="300">

