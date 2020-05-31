#ifndef SF2ARM_H
#define SF2ARM_H

#include <iostream>
#include <vector>
#include <algorithm>
#include <exception>
#include <io.h>
// #include <cstring>

using namespace std;

class paraments{
    public:
    string pra_path;//³ÌÐòÂ·¾¶
    vector<string> filenames;
    vector<string> shortfilenames; 

    paraments(){};
    paraments(string path);
    // paraments(int arg,char* const argr[]);
    // paraments(vector<string>args);
    static string onlyPath(string s);
    void double_file_exist(vector<string> &s);
    void get_files(const string path,vector<string>&files);
    static vector<string>& shortnamesget(vector<string>&);
    void path_to_sfileout();
    void tools_exist();

    ~paraments(){};
};



#endif
