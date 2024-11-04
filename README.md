
<img align="left" width="70" height="full" src="https://github.com/The-Garage-Tech-Team/design_system_flutter/assets/53023171/f9c41919-764e-4727-913b-e7f2f7fccdec" alt="flutterlogo" >



# Bottom Sheet Types in Flutter: A Step-by-Step Guide.  
<br>
Bottom Sheets in Flutter are essential UI components that enhance user experience by allowing additional content and options to be displayed without leaving the current screen. In this article, we’ll explore the types of bottom sheets in Flutter:
- Modal Bottom Sheet.
- Persistent Bottom Sheet.


<br>



<br>

 For more information, visit my article: [Bottom Sheet Types in Flutter: A Step-by-Step Guide](https://medium.com/@afnan.almohd/bottom-sheet-types-in-flutter-a-step-by-step-guide-e6ffefe7a8d4)
<br>

##  Contents
- [Modal Bottom Sheet](#modal).
- [Persistent Bottom Sheet](#persistent).
- [Demo](#demo).



## Modal Bottom Sheet <a id="modal"></a>

A modal bottom sheet presents options or information while blocking interaction with the rest of the screen. It requires an explicit action, such as a button click, for dismissal.

#### How to Use  ```showModalBottomSheet ```

The ScaffoldState.showBottomSheet function takes two primary parameters:
- context: The current context.
- builder:: A function that defines the content of the bottom sheet.

```
showModalBottomSheet(
  context: context,
  builder: (BuildContext context) {
    return Container(
     // desigin your bottom sheet 
    );
  },
);

```

## Persistent Bottom Sheet <a id="persistent"></a>

Persistent bottom sheets allow users to view and interact with both the sheet and the main content simultaneously. They don’t block interaction with the rest of the screen and stay visible until manually dismissed or collapsed.

#### How to Use  ```ScaffoldState.showBottomSheet ```

The ScaffoldState.showBottomSheet function takes two primary parameters:
- context: The current context.
- builder:: A function that defines the content of the bottom sheet.

```
 showBottomSheet(
                  backgroundColor:Colors.deepPurple, //background color
                      context: context,
                      builder: (context) {
                      return Container(
                    // desigin your bottom sheet 
                        );
                      },
                    );

```




### Demo  <a id="demo"></a>

<img align="left" width="250" height="full" src="https://github.com/user-attachments/assets/fa9b1ca6-ec62-46c5-9879-d9f918c4e865" alt="app weather">
<img align="left" width="250" height="full" src="https://github.com/user-attachments/assets/7136a501-c5a9-4229-9433-f687a68b655d" alt="app weather">
<img align="left" width="250" style="padding: 200px height="full" src="https://github.com/user-attachments/assets/128285f4-3312-4f5f-b1cd-82bbbabca823" alt="app weather">

<br>























