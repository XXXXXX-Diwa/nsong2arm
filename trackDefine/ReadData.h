#ifndef READDATA_H_INCLUDED
#define READDATA_H_INCLUDED
#include<cstdint>
void recordAddress();
void CheckItsAddress(std::uint32_t checkAddress);

void Seek(long offset);
void Skip(long offset);
void CheckItsAddress();
void recordTrackLoopData();
#endif // READDATA_H_INCLUDED
