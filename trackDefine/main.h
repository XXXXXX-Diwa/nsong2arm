#ifndef MAIN_H_INCLUDED
#define MAIN_H_INCLUDED

#include <cstdio>
#include <cstring>
#include <cstdlib>
#include <cstdint>
#include <string.h>

extern FILE* g_inputFile;
extern FILE* g_outputFile;

extern std::string label;
extern std::uint32_t g_trackTableAddress;
extern std::uint32_t g_trackHeaderAddress;
extern std::uint32_t g_songGroup;
extern std::uint16_t g_TrackTotalNum;
extern std::uint16_t g_TrackUnknow;
extern std::uint32_t g_voiceGroupAddress;
extern std::uint32_t g_trackAddress[16];
extern std::uint16_t g_curTrackNum;
extern std::uint32_t g_trackLoopData[500];//不信会超过这么多...
extern std::uint32_t g_curJumpAddress;
extern std::uint32_t g_curTrackReadLen;
extern std::uint16_t g_curTrackLoopTotal;
extern std::uint16_t g_trackLoopDataNum;
extern std::uint16_t g_trackLoopDataWriteNum;
extern std::uint32_t g_trackLoopDefine[200];//不信会超过这么多...
extern std::uint16_t g_trackLoopDefineTotal;
extern std::uint16_t g_curTrackLoopDefineNum;

extern std::string inputFileName;
extern std::string outputFileName;


#endif // MAIN_H_INCLUDED
