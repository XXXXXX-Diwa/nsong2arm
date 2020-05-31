#ifndef SAMPLEG_H_INCLUDED
#define SAMPLEG_H_INCLUDED
#include "main.h"
//#include <string>
//#include <cstdint>

void samplesRipper(string inf);
void builFolder(string);
string onlyPath(string s);


typedef struct headerG
{
    uint32_t loopTag;
    uint32_t gRate;
    uint16_t loopPoint;
    uint32_t dataSize;
}ghead_t;

#endif // SAMPLEG_H_INCLUDED
