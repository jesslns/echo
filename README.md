## Echo

This is an exercise from the process workshop.

It is an app that repeat what you say until you exit.

### User Requirements
- The app runs on the command line or.

- When the app runs you are prompted with a phrase to 'Say something:''

- The output also has information about the date and time formatted as below.

- The app continues to prompt you to say something until you type `exit`

- when you type `exit` the app outputs 'Goodbye!' and then ends.

Example interaction:
```
$ ruby echo.rb
Say something:
hello, world
2018-01-09 | 16:26 | You said: 'hello, world'!
Say something:
exit
Goodbye!
```

### Approach

1) First wrote a feature test that mimics the user interaction as the above example.

2) I then split the problem into smaller steps and wrote unit tests for each implementation of functionality e.g. the prompted phase, the expected replies according to user's input, and the timestamp functionality.

3) Once I passed the unit tests, I have developed the required functionality.

4) Last, I wrote code that produced the expected behaviour from the functions of the interface to pass my feature test. I have also refactored my unit test as some expectations were implicitly included in the feature test. 
