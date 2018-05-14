// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef XDUMMY1_H
#define XDUMMY1_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xdummy1_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Ctrl_BaseAddress;
} XDummy1_Config;
#endif

typedef struct {
    u32 Ctrl_BaseAddress;
    u32 IsReady;
} XDummy1;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XDummy1_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XDummy1_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XDummy1_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XDummy1_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XDummy1_Initialize(XDummy1 *InstancePtr, u16 DeviceId);
XDummy1_Config* XDummy1_LookupConfig(u16 DeviceId);
int XDummy1_CfgInitialize(XDummy1 *InstancePtr, XDummy1_Config *ConfigPtr);
#else
int XDummy1_Initialize(XDummy1 *InstancePtr, const char* InstanceName);
int XDummy1_Release(XDummy1 *InstancePtr);
#endif

void XDummy1_Start(XDummy1 *InstancePtr);
u32 XDummy1_IsDone(XDummy1 *InstancePtr);
u32 XDummy1_IsIdle(XDummy1 *InstancePtr);
u32 XDummy1_IsReady(XDummy1 *InstancePtr);
void XDummy1_EnableAutoRestart(XDummy1 *InstancePtr);
void XDummy1_DisableAutoRestart(XDummy1 *InstancePtr);

void XDummy1_Set_addr(XDummy1 *InstancePtr, u32 Data);
u32 XDummy1_Get_addr(XDummy1 *InstancePtr);
void XDummy1_Set_val_r(XDummy1 *InstancePtr, u32 Data);
u32 XDummy1_Get_val_r(XDummy1 *InstancePtr);

void XDummy1_InterruptGlobalEnable(XDummy1 *InstancePtr);
void XDummy1_InterruptGlobalDisable(XDummy1 *InstancePtr);
void XDummy1_InterruptEnable(XDummy1 *InstancePtr, u32 Mask);
void XDummy1_InterruptDisable(XDummy1 *InstancePtr, u32 Mask);
void XDummy1_InterruptClear(XDummy1 *InstancePtr, u32 Mask);
u32 XDummy1_InterruptGetEnabled(XDummy1 *InstancePtr);
u32 XDummy1_InterruptGetStatus(XDummy1 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
