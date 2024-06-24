#include <windows.h>
#include <stdio.h>

volatile unsigned char isRunning = 0;
volatile unsigned char rePrompt = 0;
volatile unsigned char setDisabled = 1;
volatile unsigned short clickRate;

DWORD WINAPI handleInput(LPVOID lpParam){
    while(1){
        if(GetAsyncKeyState(VK_F1) & 0x8000){ // Check if the 'F1' key is pressed
            if(setDisabled == 0){
                isRunning = !isRunning; // Toggle running state

                if(isRunning && clickRate > 0){
                    printf("The autoclicker has started.\n");
                }else if(!isRunning && clickRate > 0){
                    printf("The autoclicker has stopped.\n");
                }
                Sleep(160); // Debounce the key press  
            }
        }
        if(setDisabled == 0){
            if(GetAsyncKeyState(VK_F2) & 0x8000){ // Check if the 'F2' key is pressed
                setDisabled = 1;
                if(setDisabled == 1){
                    isRunning = 0;
                    rePrompt = 1; // Set the flag to prompt for rate
                    Sleep(160); // Debounce the key press
                }
            }
        }
        if(GetAsyncKeyState('Q') & 0x8000){ // Check if the 'Q' key is pressed
            printf("\nExiting the program.\n");
            exit(0); // Exit the program
        }
        Sleep(25); // Sleep for a bit to reduce CPU usage
    }
    return 0;
}

int sendMouseClick(){
    POINT cursorPos;
    GetCursorPos(&cursorPos); // Gets cursor position
    INPUT input = {0};
    input.type = INPUT_MOUSE;
    input.mi.dx = cursorPos.x;
    input.mi.dy = cursorPos.y;
    input.mi.mouseData = 0;
    input.mi.dwFlags = MOUSEEVENTF_ABSOLUTE | MOUSEEVENTF_LEFTDOWN | MOUSEEVENTF_LEFTUP;
    input.mi.time = 0;
    input.mi.dwExtraInfo = 0;
    SendInput(1, &input, sizeof(INPUT));
    return 0;
}

int main(){
    HANDLE hThread = CreateThread(NULL, 0, handleInput, NULL, 0, NULL);
    if(hThread == NULL){
        fprintf(stderr, "Error creating input handling thread.\n");
        return 1;
    }
    
    printf("Type a whole number in milliseconds for the rate of clicks\n(Note: typing in a non-whole number will break things): ");
    scanf("%hu", &clickRate);
    printf("The program is running. Press 'F1' to begin clicking, press 'Q' to exit, or press 'F2' to re-enter milliseconds.\n");
    setDisabled = 0;

    while(1){ // Run the autoclicker until the user stops it
        if(rePrompt && clickRate > 0){
            isRunning = 0;
            printf("Re-type a whole number in milliseconds for the rate of clicks: ");
            scanf("%hu", &clickRate);
            rePrompt = 0;
            setDisabled = 0;
            printf("Click rate updated to %hu milliseconds.\nProgram running.\n", clickRate);
        }
        if(isRunning){
            sendMouseClick();
            Sleep(clickRate); // Wait for a user-defined click rate
        }else{
            Sleep(160); // Sleep while not running to reduce CPU usage
        }
    }
    // Clean up the thread (shouldn't be reached in this infinite loop, but good practice nonentheless)
    WaitForSingleObject(hThread, INFINITE);
    CloseHandle(hThread);
    return 0;
}