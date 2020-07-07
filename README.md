## Introduction
This is a Home Surveillance System which has (only) 2 functionalities:
1. Fall Detection
2. Change Detection

It employs Image and Video Processing techniques on a video clip of a CCTV camera feed, and detects:
   <t><br> a. a person entering the scene
   <t><br> b. falling action of a person
<br>and sends email alerts to the user after a person or a fall is detected.

It then produces a summary of the changes taking place in the scene in the form of an avi file,
and mails it to the user.

## Requirements
1. MATLAB - R2019b or higher
2. MATLAB Toolboxes:
   <br>a. Image Acquisition Toolbox
   <br>b. Image Processing Toolbox
   <br>c. Computer Vision Toolbox

## Execution
1. Run 'HomeSurveillance.m' .
   This would read and process 'video.mp4'.
2. An e-mail alert would be send to user when a person is detected, with a snapshot of the detected person ('persondetected.jpg').
3. An e-mail alert would be send to user after fall detection.
4. An e-mail would be send to user with the summary of changes taking place ('changesummary.avi').

## Modification
To edit sender's and receiver's email addresses, and password, message, and attachments; modify 'changedetectmail.m', 'persondetectmail.m', 'sendfallemail.m' .

## Reference Papers
<br>\[1] Caroline Rougier, Jean Meunier, Alain St-Arnaud, Jacqueline Rousseau ; “Fall Detection from Human Shape and Motion History Using Video Surveillance”; 21st International Conference on Advanced Information Networking and Applications Workshops (AINAW’07), 2007.
<br>\[2] Peter Sand and Seth Teller; “Video Matching”; ACM Transactions on Graphics (TOG); 2004

