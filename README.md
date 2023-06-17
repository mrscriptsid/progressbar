# Progressbar

No Dependency.

# Preview
![image](https://github.com/mrscriptsid/progressbar/assets/64629964/06cfd486-fbfa-4ec7-b361-28f02ba0c127)

# Usage

## Exports

### Client

- Progress(**data**: string, **handler**: function)
  > Creates a new progress bar directly from the export.<br>
  > **Example:**
  > ```lua
  >exports['progressbar']:Progress({
  >    name = "random_task",
  >    duration = 5000,
  >    label = "Doing something",
  >    useWhileDead = false,
  >    canCancel = true,
  >    controlDisables = {
  >        disableMovement = false,
  >        disableCarMovement = false,
  >        disableMouse = false,
  >        disableCombat = true,    
  >    },
  >    animation = {
  >        animDict = "mp_suicide",
  >        anim = "pill",
  >        flags = 49,
  >    },
  >    prop = {},
  >    propTwo = {}
  >}, function(cancelled)
  >    if not cancelled then
  >        -- finished
  >    else
  >        -- cancelled
  >    end
  >end)
  > ```

  - isDoingSomething()
    > Returns a boolean (true/false) depending on if a progressbar is present.<br>
    > **Example:**
    > ```lua
    > local busy = exports["progressbar"]:isDoingSomething()
    > ```

  - ProgressWithStartEvent(**data**: table, **start**: function, **finish**: function)
    > Works like a normal progressbar, the data parameter should be the same as the data passed into the `Progress` export above.<br>
    > The start function gets triggered upon the start of the progressbar.<br>
    > The finish handler is the same as the `handler` parameter in the `Progress` export above. 

  - ProgressWithTickEvent(**data**: table, **tick**: function, **finish**: function)
    > Works like a normal progressbar, the data parameter should be the same as the data passed into the `Progress` export above.<br>
    > The tick function gets triggered every frame while the progressbar is active.<br>
    > The finish handler is the same as the `handler` parameter in the `Progress` export above. 

  - ProgressWithTickEvent(**data**: table, **start**: function, **tick**: function, **finish**: function)
    > Works like a normal progressbar, the data parameter should be the same as the data passed into the `Progress` export above.<br>
    > The start function gets triggered upon the start of the progressbar.<br>
    > The tick function gets triggered every frame while the progressbar is active.<br>
    > The finish handler is the same as the `handler` parameter in the `Progress` export above. 
