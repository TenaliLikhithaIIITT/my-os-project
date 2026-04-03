 void kernel_main() {
    char *video_memory = (char*) 0xb8000;

    video_memory[0] = 'H';
    video_memory[2] = 'E';
    video_memory[4] = 'L';
    video_memory[6] = 'L';
    video_memory[8] = 'O';
}
