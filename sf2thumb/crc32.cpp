
#include <Windows.h>
#include "crc32.h"
#include "main.h"
//#include <string>

//#pragma warning(disable:4996 )//��ֹ����

uint32_t Crc32Table[256];


//0x04 C1 1D B7
uint32_t BitReverse(uint32_t poly)//����λ�ߵ�
{
	uint32_t dwRet=0;
	for (int i = 0; i < 32; i++) {
		dwRet |= poly & 1;//ÿ�λ�����λ
//		printf("%d", dwRet & 1);
		if (i+1 == 32)//�������λ��һ�� ���Գ��� һ��ҪС��
			break;
		dwRet <<= 1;
		poly >>= 1;
	}

	return dwRet;
}

//�����IEEE802.3��׼CRC32����ʽΪ����x32 + x26 + x23 + x22 + x16 + x12 + x11 + x10 + x8 + x7 + x5 + x4 + x2 + x + 1 ��Ӧ��bitΪ�϶�Ӧ1
void CRC32Init(uint32_t poly)//�������
{
	int i;

	poly = BitReverse(poly);

//	printf("bitReverse�Ľ��Ϊ : %08x\n",poly);
	for (i = 0; i < 256; i++) {//����Ϊ256�����
		ULONG eachGen = i;
		for (size_t j = 0; j < 8; j++)//�ƶ�һ���ֽڵĳ��� ÿ�μ������λ�Ƿ�Ϊ1 �����Ǽ�����λ ��Ȼ����ʽ���ÿ�ֵı�ֵ ����Ϊÿ��eachGen��õ�Ϊindex ÿ�αض��᲻һ�� �ʲ����ı���ɢ���Էǳ���
		{
			if (eachGen & 1)
				eachGen = poly ^ (eachGen >> 1);
			else
				eachGen >>= 1;
		}
		Crc32Table[i] = eachGen;
	}

}

uint32_t CRC32Encrypt(uint32_t crc32, char *data, ULONG dataLen)
{
	ULONG i;

	for (i = 0; i < dataLen; i++) {
		unsigned char index = (unsigned char)(crc32 ^ data[i]);//ÿһ�ֵ�crc32 �� data[i]����index
		crc32 = (crc32 >> 8) ^ Crc32Table[index];//ÿһ�ֵ�ԭ�ȵ�crc32�ĸ�24λ�� index����ֵ�����������µ�crc32 ѭ��dataLen����
	}

	return crc32;
}

uint32_t crc32Result(std::string s )
{
	FILE * fp = nullptr;
	ULONG fileLen = 0;
	char * buffer = NULL;
	uint32_t crc32 = 0;

	//�������
	CRC32Init(0x04C11DB7);

	fp = fopen(s.c_str(), "rb");
	if (nullptr == fp) {
		printf("�޷����ļ�%s\n",s.c_str());
	}
	fseek(fp, 0, SEEK_END);
	fileLen = ftell(fp);
	buffer = (char *)malloc(fileLen * sizeof(char));
	memset(buffer, 0, fileLen * sizeof(char));
//	printf("�ļ����� : %d\n", fileLen);
	fseek(fp, 0, SEEK_SET);//��λ���ļ���ͷ ��ʼ��ȡ����
	if (fread(buffer, sizeof(char), fileLen, fp)<1) {
			printf("�޷���ȡ�ļ�%s����\n",s.c_str());
	}

	crc32 = 0xFFFFFFFF;//��Ϊ��ʼֵ �����ֲ����õ�
	crc32 = CRC32Encrypt(crc32,buffer,fileLen);
	crc32 ^= 0xFFFFFFFF;
//	printf("CRC32�Ľ��Ϊ  : %8x\n",crc32);

//	if (fp)
		fclose(fp);
		return crc32;
}
