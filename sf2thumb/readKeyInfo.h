#ifndef READKEYINFO_H_INCLUDED
#define READKEYINFO_H_INCLUDED

void readKeyInfo(std::string sf2FileName);
//std::string onlyFileName(std::string s);

extern uint32_t samplesDataOffset;//��������
extern uint8_t samplesBitTag;//�������� 8 / 16

extern uint8_t instTotalNum;//������
extern uint8_t instVoice[50];//ÿ�������voiceֵ
extern uint8_t instSampleTotalNum[256];//ÿ�������������
extern uint16_t instSamplesTotalNum;//�����������������
extern uint8_t instSampleKeyDamageStart[500];//�����������ļ�ֵ���
extern uint8_t instSampleKeyDamageEnd[500];//������������Χ�Ľ���
extern uint8_t instSamplePan[500];//������������pan
extern uint8_t instSamplePlayBack[500];//������������playback
extern uint8_t instSampleKey[500];//�����������ļ�ֵ
extern uint32_t instSampleAttack[500];//��������������
extern uint32_t instSampleDecay[500];//������������˥
extern uint32_t instSampleSustain[500];//��������������
extern uint32_t instSampleRelease[500];//��������������
extern uint8_t instSampleNum[500];//�����������ĺ�

extern uint8_t samplesTotalNum;//��������
extern uint32_t sampleDataStart[500];//ÿ���������ݵĿ�ʼλ��
extern uint32_t sampleDataEnd[500];//ÿ���������ݵĽ���λ��
//16bit,ѭ��ֵҲ�ǳ���16bit��
extern uint32_t sampleLoopStart[500];//ÿ������ѭ���Ŀ�ʼ��
extern uint32_t sampleLoopEnd[500];//ÿ������ѭ���Ľ�����
extern uint32_t sampleRate[500];//ÿ��������Ƶ��ֵ
extern uint8_t sampleRootKey[500];//ÿ�������ļ�ֵ


#endif // READKEYINFO_H_INCLUDED
