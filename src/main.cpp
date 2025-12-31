#include <iostream>
#include <raylib.h>


// Based on https://github.com/cpredef/predef/blob/master/OperatingSystems.md
#if defined (__linux__)
	#define OS "Linux"
#elif defined (_WIN32)
	#define OS "Windows"
#elif defined (__APPLE__)
	#define OS "MacOS"
#else
	#define OS "idk.. some potato or what?"
#endif

int main (int argc, char *argv[]) {
	std::cout << "Hello World!\n";
	const int screenWidth = 800;
	const int screenHeight = 450;

	InitWindow(screenWidth, screenHeight, "raylib [core] example - basic window");

	SetTargetFPS(60);
	
	while (!WindowShouldClose())
	{
		// Update
		
		// Draw
		BeginDrawing();

		ClearBackground((Color) { 20, 20, 20, 255 });
		DrawText("Congrats! You created your first window!", 190, 200, 20, RAYWHITE);
		DrawText("Compiled for: " OS, 220, 220, 18, RAYWHITE);

		EndDrawing();
	}

	CloseWindow();
    
	return 0;
}
