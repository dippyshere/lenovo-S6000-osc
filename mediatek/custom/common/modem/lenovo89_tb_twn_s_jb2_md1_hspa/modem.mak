#
#  Copyright Statement:
#  ---------------------------
#  This software/firmware and related documentation ("MediaTek Software") are
#  protected under relevant copyright laws. The information contained herein 
#  is confidential and proprietary to MediaTek Inc. and/or its licensors.  
#  Without the prior written permission of MediaTek inc. and/or its licensors,
#  any reproduction,modification, use or disclosure of MediaTek Software, and
#  information contained herein, in whole or in part, shall be strictly prohibited.
#   
#  MediaTek Inc.(C)2011.All rights reserved.
#
#  BY OPENING THIS FILE, RECEIVER HEREBY UNEQUIVOCALLY ACKNOWLEDGES AND
#  AGREES THAT THE SOFTWARE/FIRMWARE AND ITS DOCUMENTATIONS ("MEDIATEK 
#  SOFTWARE") RECEIVED FROM MEDIATEK AND/OR ITS REPRESENTATIVES ARE PROVIDED 
#  TO RECEIVER ON AN "AS-IS" BASIS ONLY. MEDIATEK EXPRESSLY DISCLAIMS ANY AND ALL 
#  WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED 
#  WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE OR 
#  NONINFRINGEMENT. NEITHER DOES MEDIATEK PROVIDE ANY WARRANTY WHATSOEVER 
#  WITH RESPECT TO THE SOFTWARE OF ANY THIRD PARTY WHICH MAY BE USED BY, 
#  INCORPORATED IN, OR SUPPLIED WITH THE MEDIATEK SOFTWARE, AND RECEIVER 
#  AGREES TO LOOK ONLY TO SUCH THIRD PARTY FOR ANY WARRANTY CLAIM RELATING 
#  THERETO. RECEIVER EXPRESSLY ACKNOWLEDGES THAT IT IS RECEIVER'S SOLE 
#  RESPONSIBILITY TO OBTAIN FROM ANY THIRD PARTY ALL PROPER LICENSES 
#  CONTAINED IN MEDIATEK SOFTWARE. MEDIATEK SHALL ALSO NOT BE RESPONSIBLE FOR 
#  ANY MEDIATEK SOFTWARE RELEASES MADE TO RECEIVER'S SPECIFICATION OR TO 
#  CONFORM TO A PARTICULAR STANDARD OR OPEN FORUM. RECEIVER'S SOLE AND 
#  EXCLUSIVE REMEDY AND MEDIATEK'S ENTIRE AND CUMULATIVE LIABILITY WITH RESPECT 
#  TO THE MEDIATEK SOFTWARE RELEASED HEREUNDER WILL BE,AT MEDIATEK'S OPTION, 
#  TO REVISE OR REPLACE THE MEDIATEK SOFTWARE AT ISSUE,OR REFUND ANY SOFTWARE 
#  LICENSE FEES OR SERVICE CHARGE PAID BY RECEIVER TO MEDIATEK FOR SUCH MEDIATEK 
#  SOFTWARE AT ISSUE. 
#
# *************************************************************************

# Generated at 2013-02-07 10:41:12

# ------------------------------ Modem specification
MODEM_SPEC = MTK_MODEM_3G_WCDMA
  # Description:
  #   MTK modem spec type
  # Option Values:
  #   MTK_MODEM_3G_WCDMA: MTK 3G WCDMA modem
  #   MTK_MODEM_3G_TDD: MTK 3G TD modem
  #   MTK_MODEM_2G_EDGE: MTK 2G EDGE modem
  #   MTK_MODEM_4G_LTE_SM: MTK 4G LTE single mode modem
  #   MTK_MODEM_4G_LTE_MM_WCDMA: MTK 4G LTE-WCDMA-EDGE multi-mode modem
  #   MTK_MODEM_4G_LTE_MM_TDD: MTK 4G LTE-TD-EDGE multi-mode modem
  # Switch-ability:
  #   Non-switchable
include make/modem_spec/$(strip $(MODEM_SPEC)).mak

# ------------------------------ Configurable Features
AFC_VCXO_TYPE = VCXO
  # Description:
  #   the oscillator type used in this project
  # Option Values:
  #   VCTCXO: VCTCXO clk
  #   VCXO: VCXO clk
  # Switch-ability:
  #   [Any] -> [Any]

OTP_SUPPORT = FALSE
  # Description:
  #   Support One-Time-Programming area for the flash device
  # Option Values:
  #   TRUE: Enable One-Time Program Support
  #   FALSE: Disable One-Time Program Support
  # Switch-ability:
  #   FALSE -> TRUE
  #   TRUE -> FALSE

BAND_SUPPORT = QUAD
  # Description:
  #   Described the support band of RF
  # Option Values:
  #   DUAL900: Support 900/1800
  #   EGSM900: Support 900
  #   RGSM900: Support 900
  #   DUAL850: Support 850/1800/1900
  #   QUAD: Support 850/900/1800/1900
  #   PGSM900: Support 900
  #   DCS1800: Support 1800
  #   PCS1900: Support 1900
  #   GSM850: Support 850
  #   GSM480: Support 480
  #   GSM450: Support 450
  #   TRIPLE: Support 900/1800/1900
  # Switch-ability:
  #   DUAL850 -> GSM850
  #   DUAL850 -> PCS1900
  #   DUAL900 -> DCS1800
  #   DUAL900 -> EGSM900
  #   QUAD -> [Any]
  #   TRIPLE -> DCS1800
  #   TRIPLE -> DUAL900
  #   TRIPLE -> EGSM900
  #   TRIPLE -> PCS1900

RF_MODULE = MT6167_2G_SKYPA_CUSTOM
  # Description:
  #   describe the RF module used in this project
  # Option Values:
  #   NA: the RF module used in this project
  # Switch-ability:
  #   [Any] -> [Any]

UMTS_TDD128_RF_MODULE = NONE
  # Description:
  #   Modem Capability
  # Option Values:
  #   NA: the RF module used in this project
  # Switch-ability:
  #   Non-switchable

UMTS_RF_MODULE = CUSTOM_MT6167
  # Description:
  #   This option is used specify which RF module is used in UL1D RF driver
  #   "UL1D" means UMTS Layer 1 Driver.
  # Option Values:
  #   MT6162: the RF module used in this project
  # Switch-ability:
  #   Non-switchable

# ------------------------------ Verno information
VERNO = MOLY.WR8.W1248.MD.WG.MP.V5
BUILD = BUILD_NO
BRANCH = WR8.W1248.MD.WG.MP
# ------------------------------ System configurations
PLATFORM = MT6589
  # Description:
  #   Name of BB-chip.
  # Option Values:
  #   NA: 
  # Switch-ability:
  #   Non-switchable

CHIP_VER = S00
  # Description:
  #   Chip version, changed according to ECO.
  # Option Values:
  #   S01: .
  #   S00: .
  #   S02: .
  # Switch-ability:
  #   Non-switchable

BOARD_VER = LENOVO89_TB_TWN_S_JB2_MD1_BB
  # Description:
  #   Name of the PCB or EVB.
  # Option Values:
  #   N/A
  # Switch-ability:
  #   Non-switchable


#==============
  
CUSTOM_OPTION += 

# internal configuration
PROJECT_MAKEFILE_EXT = LENOVO89_TB_TWN_S_JB2_MD1_HSPA_EXT
include make/custom_config/$(strip $(PROJECT_MAKEFILE_EXT)).mak