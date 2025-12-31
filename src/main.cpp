#include <iostream>

#include <imgui.h>
#include <imgui_impl_glfw.h>
#include <imgui_impl_opengl3.h>

#include <glad/gl.h>
#include <GLFW/glfw3.h>

int main (int argc, char *argv[]) {
	std::cout << "Hello World!\n";

	GLFWwindow* window;

	if(!glfwInit())
		return -1;

	window = glfwCreateWindow(1280, 720, "GLFW Window", NULL, NULL);
	if(!window) {
		glfwTerminate();
		return -1;
	}

	glfwMakeContextCurrent(window);

	int version = gladLoadGL((GLADloadfunc) glfwGetProcAddress);
	if (version == 0) {
		glfwTerminate();
		return -1;
	}

  IMGUI_CHECKVERSION();
  ImGui::CreateContext();
  ImGuiIO& io = ImGui::GetIO(); (void)io;

  ImGui::StyleColorsDark();
  ImGuiStyle& style = ImGui::GetStyle();
	
	ImGui_ImplGlfw_InitForOpenGL(window, true);
 	ImGui_ImplOpenGL3_Init("#version 330");


	while (!glfwWindowShouldClose(window)) {
		// Clear Frame
		glClear(GL_COLOR_BUFFER_BIT);

		// ImGui
		ImGui_ImplOpenGL3_NewFrame();
		ImGui_ImplGlfw_NewFrame();
		ImGui::NewFrame();

		ImGui::Begin("Dear ImGui Window");
		ImGui::Text("This is example of cross-compilable opengl project using");
		ImGui::Text(" - glfw");
		ImGui::Text(" - glad");
		ImGui::Text(" - imgui");
		ImGui::Text("libraries");
		ImGui::End();

		ImGui::Render();
    ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());

		// End of frame
		glfwSwapBuffers(window);
		glfwPollEvents();
	}

	glfwTerminate();
	return 0;
}
