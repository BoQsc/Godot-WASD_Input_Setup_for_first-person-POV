### First Person Point of View Input Actions for Godot

Godot-WASD-Input-Map_for-pov-first-person


WASD_Input_Setup_for_first-person-POV

WASD Setup for 1st POV
FP_POV 
1st POV


Project Settings WASD Setup for First Person Perspective (Acitvate or Deactivate)
Automatically setups WASD input actions for the current project.
The actions added after enabling this plugin:
move_forward  - W keyboard key
move_backward - S keyboard key
move_left     - A keyboard key
move_right    - D keyboard key

Note: due to signal emission problems, the editor do not show immediate changes in the Godot Editor Project Input Map Settings. 
However all is working on activation and reloading project or closing project and reopening.

References and acknowledgements  
https://github.com/godotengine/godot/pull/53296

https://docs.godotengine.org/en/stable/classes/class_projectsettings.html  

https://www.reddit.com/r/godot/comments/1dpmjgw/how_to_emit_signals_from_another_node/
https://docs.godotengine.org/en/stable/classes/class_editorplugin.html#class-editorplugin-signal-project-settings-changed

https://www.reddit.com/r/godot/comments/156vfhg/whats_the_difference_emit_signal_vs_signalemit/  


Research notes   
https://github.com/godotengine/godot/pull/80902
https://github.com/godotengine/godot-proposals/issues/7525
https://forum.godotengine.org/t/how-to-add-an-inputevent-to-inputmap-with-code/27923/5
https://docs.godotengine.org/en/stable/classes/class_editorsettings.html
https://docs.godotengine.org/en/stable/classes/class_projectsettings.html#class-projectsettings-method-set-restart-if-changed
https://docs.godotengine.org/en/stable/classes/class_%40globalscope.html#enum-globalscope-key
https://docs.godotengine.org/en/4.4/tutorials/inputs/inputevent.html#actions
