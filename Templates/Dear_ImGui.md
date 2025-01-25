# Dear ImGui
Welcome to Dear ImGUI tutorial. This is an immediate mode GUI, where the gui 
elements do not remember the state, it is managed by the user and has many other 
goals on top of that. Updated goals can be found in the "Mission Statement" 
section in docs inside of imgui.cpp.

Mostly used in game development, tools for games, debug environments for games, 
etc. It is not a typical GUI library. But it has very minimal dependencies which 
are either cross platform or can be easily integrated in cross platform builds.

Primary Language: C++ Bindings available in most languages.

In the C++ version there are backends which are the platform or technology 
specific implementation to choose and import in the project. The updated 
document for this will be available from document inside of the docs/BACKENDS.md 
in Dear ImGui source.

Some of backends are:
- Platform: Android, GLFW, OSX, SDL2/3, Windows
- Renderer: DirectX 9-12, Metal, OpenGL2/3, Vulkan

# Overview of its working
Dear ImGui works in code in following steps:
1. Initialize the Dear ImGui library global context using `ImGui::CreateContext()`
1. Initialize the backend selected like `ImGui_ImplXXXX_Init()`.
1. Start a loop to draw the frames for the application. Inside of loop do:
	2. Mark start of frame to backend like `ImGui_ImplXXXX_NewFrame()`.
	2. Mark start of frame globally `Imgui::NewFrame()` call.
	2. Draw frame content calling the `Imgui::` GUI element functions.
	2. Mark end of frame by calling `ImGui::Render()` on global
        2. Mark end of frame by calling like `ImGui_ImplXXXX_RenderDrawData()` on backend.
1. Shutdown the backend like `ImGui_ImplXXXX_Shutdown()`.
1. Shutdown the context by `ImGui::DestroyContext()`.

The backend and all its functions are specific to backend and XXXX shown will 
become like 'sdl2', 'opengl2', etc. They come from the "backends/" folder in the 
source.

The global context is in imgui.cpp/.h.

# Using
To use this library we have to choose a backend or multiple and select only one 
during compile. Then we will initialize Dear ImGui using 
`Imgui::CreateContext()` and also backend specific calls like 
`ImGui_ImplXXXX_Init()`.

## GUI Elements:
Some of the GUI elements are:
ImGui::Text
ImGui::Label
