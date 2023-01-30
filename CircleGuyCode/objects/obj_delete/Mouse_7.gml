file_delete("Save1.ini");

ini_open("Save1.ini");
global.highscore = ini_read_real("Save1","highscore", 0);
ini_close();