#ifndef READKEYINFO_H_INCLUDED
#define READKEYINFO_H_INCLUDED

void readKeyInfo(std::string sf2FileName);
//std::string onlyFileName(std::string s);

extern uint32_t samplesDataOffset;//样本坐标
extern uint8_t samplesBitTag;//样本比特 8 / 16

extern uint8_t instTotalNum;//音组数
extern uint8_t instVoice[50];//每个音组的voice值
extern uint8_t instSampleTotalNum[256];//每个音组的样本数
extern uint16_t instSamplesTotalNum;//所有音组的样本总数
extern uint8_t instSampleKeyDamageStart[500];//音组中样本的键值起点
extern uint8_t instSampleKeyDamageEnd[500];//音组中样本范围的结束
extern uint8_t instSamplePan[500];//音组中样本的pan
extern uint8_t instSamplePlayBack[500];//音组中样本的playback
extern uint8_t instSampleKey[500];//音组中样本的键值
extern uint32_t instSampleAttack[500];//音组中样本的起
extern uint32_t instSampleDecay[500];//音组中样本的衰
extern uint32_t instSampleSustain[500];//音组中样本的延
extern uint32_t instSampleRelease[500];//音组中样本的消
extern uint8_t instSampleNum[500];//音组中样本的号

extern uint8_t samplesTotalNum;//样本总数
extern uint32_t sampleDataStart[500];//每个样本数据的开始位置
extern uint32_t sampleDataEnd[500];//每个样本数据的结束位置
//16bit,循环值也是乘以16bit算
extern uint32_t sampleLoopStart[500];//每个样本循环的开始处
extern uint32_t sampleLoopEnd[500];//每个样本循环的结束处
extern uint32_t sampleRate[500];//每个样本的频率值
extern uint8_t sampleRootKey[500];//每个样本的键值


#endif // READKEYINFO_H_INCLUDED
