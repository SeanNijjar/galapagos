-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Sun May 13 23:00:30 2018
-- Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/tarafdar/workDir/galapagos/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_ifg_delay_0/shell_ifg_delay_0_sim_netlist.vhdl
-- Design      : shell_ifg_delay_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku115-flva1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shell_ifg_delay_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of shell_ifg_delay_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of shell_ifg_delay_0 : entity is "shell_ifg_delay_0,xlconstant_v1_1_4_xlconstant,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of shell_ifg_delay_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of shell_ifg_delay_0 : entity is "xlconstant_v1_1_4_xlconstant,Vivado 2018.1";
end shell_ifg_delay_0;

architecture STRUCTURE of shell_ifg_delay_0 is
  signal \<const0>\ : STD_LOGIC;
begin
  dout(7) <= \<const0>\;
  dout(6) <= \<const0>\;
  dout(5) <= \<const0>\;
  dout(4) <= \<const0>\;
  dout(3) <= \<const0>\;
  dout(2) <= \<const0>\;
  dout(1) <= \<const0>\;
  dout(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;