-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "10/20/2022 18:02:14"

-- 
-- Device: Altera 10M25SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_16,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_18,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_19,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_129,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_136,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_138,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	tone_gen IS
    PORT (
	clk_50 : IN std_logic;
	sw : IN std_logic_vector(7 DOWNTO 0);
	spkr_outp : BUFFER std_logic;
	led_out : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END tone_gen;

-- Design Ports Information
-- spkr_outp	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[0]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[2]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[3]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[4]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[5]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[6]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[7]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_45,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_47,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50	=>  Location: PIN_26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF tone_gen IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_50 : std_logic;
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_spkr_outp : std_logic;
SIGNAL ww_led_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \spkr_outp~output_o\ : std_logic;
SIGNAL \led_out[0]~output_o\ : std_logic;
SIGNAL \led_out[1]~output_o\ : std_logic;
SIGNAL \led_out[2]~output_o\ : std_logic;
SIGNAL \led_out[3]~output_o\ : std_logic;
SIGNAL \led_out[4]~output_o\ : std_logic;
SIGNAL \led_out[5]~output_o\ : std_logic;
SIGNAL \led_out[6]~output_o\ : std_logic;
SIGNAL \led_out[7]~output_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \Equal12~0_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \Equal11~1_combout\ : std_logic;
SIGNAL \clk_50~input_o\ : std_logic;
SIGNAL \clk_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \count3~1_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \count3~2_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \count3~0_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \count3~3_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \count3~4_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \count3~5_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \count3~6_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \count3~7_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \Equal2~7_combout\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \Add2~61\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \Equal2~8_combout\ : std_logic;
SIGNAL \Equal2~9_combout\ : std_logic;
SIGNAL \Equal2~10_combout\ : std_logic;
SIGNAL \outp3~0_combout\ : std_logic;
SIGNAL \outp3~q\ : std_logic;
SIGNAL \Equal12~1_combout\ : std_logic;
SIGNAL \Equal14~0_combout\ : std_logic;
SIGNAL \Equal13~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \count4~2_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \count4~3_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \count4~0_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \count4~1_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \count4~4_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \count4~5_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \count4~6_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \count4~7_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \count4~8_combout\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \Equal3~5_combout\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \Equal3~6_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal3~4_combout\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \Add3~49\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \Add3~51\ : std_logic;
SIGNAL \Add3~52_combout\ : std_logic;
SIGNAL \Add3~53\ : std_logic;
SIGNAL \Add3~54_combout\ : std_logic;
SIGNAL \Add3~55\ : std_logic;
SIGNAL \Add3~56_combout\ : std_logic;
SIGNAL \Add3~57\ : std_logic;
SIGNAL \Add3~58_combout\ : std_logic;
SIGNAL \Add3~59\ : std_logic;
SIGNAL \Add3~60_combout\ : std_logic;
SIGNAL \Add3~61\ : std_logic;
SIGNAL \Add3~62_combout\ : std_logic;
SIGNAL \Equal3~8_combout\ : std_logic;
SIGNAL \Equal3~7_combout\ : std_logic;
SIGNAL \Equal3~9_combout\ : std_logic;
SIGNAL \Equal3~10_combout\ : std_logic;
SIGNAL \outp4~0_combout\ : std_logic;
SIGNAL \outp4~q\ : std_logic;
SIGNAL \spkr_outp~5_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \count2~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \count2~1_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \count2~2_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \count2~3_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \count2~4_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \count2~5_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \count2~6_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \count2~7_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \count2~8_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \count2~9_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \Equal1~10_combout\ : std_logic;
SIGNAL \outp2~0_combout\ : std_logic;
SIGNAL \outp2~q\ : std_logic;
SIGNAL \Equal14~1_combout\ : std_logic;
SIGNAL \spkr_outp~13_combout\ : std_logic;
SIGNAL \spkr_outp~3_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \count7[0]~6_combout\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Add0~1_cout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \count1~0_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \count1~1_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \count1~2_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \count1~3_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \count1~4_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \count1~5_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \count1~6_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \count1~7_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \count1~8_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \outp1~0_combout\ : std_logic;
SIGNAL \outp1~q\ : std_logic;
SIGNAL \spkr_outp~4_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \count5~1_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \count5~2_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \count5~0_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \count5~3_combout\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \count5~4_combout\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \count5~5_combout\ : std_logic;
SIGNAL \Add4~19\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \count5~6_combout\ : std_logic;
SIGNAL \Add4~21\ : std_logic;
SIGNAL \Add4~22_combout\ : std_logic;
SIGNAL \count5~7_combout\ : std_logic;
SIGNAL \Add4~23\ : std_logic;
SIGNAL \Add4~24_combout\ : std_logic;
SIGNAL \Add4~25\ : std_logic;
SIGNAL \Add4~26_combout\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~28_combout\ : std_logic;
SIGNAL \Add4~29\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \Add4~31\ : std_logic;
SIGNAL \Add4~32_combout\ : std_logic;
SIGNAL \count5~8_combout\ : std_logic;
SIGNAL \Add4~33\ : std_logic;
SIGNAL \Add4~34_combout\ : std_logic;
SIGNAL \Add4~35\ : std_logic;
SIGNAL \Add4~36_combout\ : std_logic;
SIGNAL \Add4~37\ : std_logic;
SIGNAL \Add4~38_combout\ : std_logic;
SIGNAL \Add4~39\ : std_logic;
SIGNAL \Add4~40_combout\ : std_logic;
SIGNAL \Add4~41\ : std_logic;
SIGNAL \Add4~42_combout\ : std_logic;
SIGNAL \Add4~43\ : std_logic;
SIGNAL \Add4~44_combout\ : std_logic;
SIGNAL \Add4~45\ : std_logic;
SIGNAL \Add4~46_combout\ : std_logic;
SIGNAL \Add4~47\ : std_logic;
SIGNAL \Add4~48_combout\ : std_logic;
SIGNAL \Add4~49\ : std_logic;
SIGNAL \Add4~50_combout\ : std_logic;
SIGNAL \Add4~51\ : std_logic;
SIGNAL \Add4~52_combout\ : std_logic;
SIGNAL \Add4~53\ : std_logic;
SIGNAL \Add4~54_combout\ : std_logic;
SIGNAL \Add4~55\ : std_logic;
SIGNAL \Add4~56_combout\ : std_logic;
SIGNAL \Add4~57\ : std_logic;
SIGNAL \Add4~58_combout\ : std_logic;
SIGNAL \Add4~59\ : std_logic;
SIGNAL \Add4~60_combout\ : std_logic;
SIGNAL \Add4~61\ : std_logic;
SIGNAL \Add4~62_combout\ : std_logic;
SIGNAL \Equal4~9_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \Equal4~3_combout\ : std_logic;
SIGNAL \Equal4~4_combout\ : std_logic;
SIGNAL \Equal4~8_combout\ : std_logic;
SIGNAL \Equal4~5_combout\ : std_logic;
SIGNAL \Equal4~6_combout\ : std_logic;
SIGNAL \Equal4~7_combout\ : std_logic;
SIGNAL \Equal4~10_combout\ : std_logic;
SIGNAL \outp5~0_combout\ : std_logic;
SIGNAL \outp5~q\ : std_logic;
SIGNAL \spkr_outp~6_combout\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \count7~0_combout\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \Add6~11\ : std_logic;
SIGNAL \Add6~12_combout\ : std_logic;
SIGNAL \Add6~13\ : std_logic;
SIGNAL \Add6~14_combout\ : std_logic;
SIGNAL \Add6~15\ : std_logic;
SIGNAL \Add6~16_combout\ : std_logic;
SIGNAL \count7~1_combout\ : std_logic;
SIGNAL \Add6~17\ : std_logic;
SIGNAL \Add6~18_combout\ : std_logic;
SIGNAL \Add6~19\ : std_logic;
SIGNAL \Add6~20_combout\ : std_logic;
SIGNAL \Add6~21\ : std_logic;
SIGNAL \Add6~22_combout\ : std_logic;
SIGNAL \count7~2_combout\ : std_logic;
SIGNAL \Equal6~3_combout\ : std_logic;
SIGNAL \Add6~23\ : std_logic;
SIGNAL \Add6~24_combout\ : std_logic;
SIGNAL \count7~3_combout\ : std_logic;
SIGNAL \Add6~25\ : std_logic;
SIGNAL \Add6~26_combout\ : std_logic;
SIGNAL \Add6~27\ : std_logic;
SIGNAL \Add6~28_combout\ : std_logic;
SIGNAL \count7~4_combout\ : std_logic;
SIGNAL \Add6~29\ : std_logic;
SIGNAL \Add6~30_combout\ : std_logic;
SIGNAL \count7~5_combout\ : std_logic;
SIGNAL \Add6~31\ : std_logic;
SIGNAL \Add6~32_combout\ : std_logic;
SIGNAL \Add6~33\ : std_logic;
SIGNAL \Add6~34_combout\ : std_logic;
SIGNAL \Add6~35\ : std_logic;
SIGNAL \Add6~36_combout\ : std_logic;
SIGNAL \Add6~37\ : std_logic;
SIGNAL \Add6~38_combout\ : std_logic;
SIGNAL \Add6~39\ : std_logic;
SIGNAL \Add6~40_combout\ : std_logic;
SIGNAL \Add6~41\ : std_logic;
SIGNAL \Add6~42_combout\ : std_logic;
SIGNAL \Add6~43\ : std_logic;
SIGNAL \Add6~44_combout\ : std_logic;
SIGNAL \Add6~45\ : std_logic;
SIGNAL \Add6~46_combout\ : std_logic;
SIGNAL \Equal6~6_combout\ : std_logic;
SIGNAL \Equal6~5_combout\ : std_logic;
SIGNAL \Add6~47\ : std_logic;
SIGNAL \Add6~48_combout\ : std_logic;
SIGNAL \Add6~49\ : std_logic;
SIGNAL \Add6~50_combout\ : std_logic;
SIGNAL \Add6~51\ : std_logic;
SIGNAL \Add6~52_combout\ : std_logic;
SIGNAL \Add6~53\ : std_logic;
SIGNAL \Add6~54_combout\ : std_logic;
SIGNAL \Equal6~7_combout\ : std_logic;
SIGNAL \Add6~55\ : std_logic;
SIGNAL \Add6~56_combout\ : std_logic;
SIGNAL \Add6~57\ : std_logic;
SIGNAL \Add6~58_combout\ : std_logic;
SIGNAL \Add6~59\ : std_logic;
SIGNAL \Add6~60_combout\ : std_logic;
SIGNAL \Add6~61\ : std_logic;
SIGNAL \Add6~62_combout\ : std_logic;
SIGNAL \Equal6~8_combout\ : std_logic;
SIGNAL \Equal6~9_combout\ : std_logic;
SIGNAL \Equal6~4_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \Equal6~2_combout\ : std_logic;
SIGNAL \Equal6~10_combout\ : std_logic;
SIGNAL \outp7~0_combout\ : std_logic;
SIGNAL \outp7~q\ : std_logic;
SIGNAL \Add5~1_cout\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \count6~0_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \count6~1_combout\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \count6~2_combout\ : std_logic;
SIGNAL \Add5~19\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \Add5~21\ : std_logic;
SIGNAL \Add5~22_combout\ : std_logic;
SIGNAL \count6~3_combout\ : std_logic;
SIGNAL \Add5~23\ : std_logic;
SIGNAL \Add5~24_combout\ : std_logic;
SIGNAL \count6~4_combout\ : std_logic;
SIGNAL \Add5~25\ : std_logic;
SIGNAL \Add5~26_combout\ : std_logic;
SIGNAL \count6~5_combout\ : std_logic;
SIGNAL \Add5~27\ : std_logic;
SIGNAL \Add5~28_combout\ : std_logic;
SIGNAL \count6~6_combout\ : std_logic;
SIGNAL \Equal5~3_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Add5~29\ : std_logic;
SIGNAL \Add5~30_combout\ : std_logic;
SIGNAL \Add5~31\ : std_logic;
SIGNAL \Add5~32_combout\ : std_logic;
SIGNAL \Add5~33\ : std_logic;
SIGNAL \Add5~34_combout\ : std_logic;
SIGNAL \Add5~35\ : std_logic;
SIGNAL \Add5~36_combout\ : std_logic;
SIGNAL \Add5~37\ : std_logic;
SIGNAL \Add5~38_combout\ : std_logic;
SIGNAL \Add5~39\ : std_logic;
SIGNAL \Add5~40_combout\ : std_logic;
SIGNAL \Add5~41\ : std_logic;
SIGNAL \Add5~42_combout\ : std_logic;
SIGNAL \Add5~43\ : std_logic;
SIGNAL \Add5~44_combout\ : std_logic;
SIGNAL \Equal5~5_combout\ : std_logic;
SIGNAL \Add5~45\ : std_logic;
SIGNAL \Add5~46_combout\ : std_logic;
SIGNAL \Add5~47\ : std_logic;
SIGNAL \Add5~48_combout\ : std_logic;
SIGNAL \Add5~49\ : std_logic;
SIGNAL \Add5~50_combout\ : std_logic;
SIGNAL \Add5~51\ : std_logic;
SIGNAL \Add5~52_combout\ : std_logic;
SIGNAL \Equal5~6_combout\ : std_logic;
SIGNAL \Add5~53\ : std_logic;
SIGNAL \Add5~54_combout\ : std_logic;
SIGNAL \Add5~55\ : std_logic;
SIGNAL \Add5~56_combout\ : std_logic;
SIGNAL \Add5~57\ : std_logic;
SIGNAL \Add5~58_combout\ : std_logic;
SIGNAL \Add5~59\ : std_logic;
SIGNAL \Add5~60_combout\ : std_logic;
SIGNAL \Equal5~7_combout\ : std_logic;
SIGNAL \Equal5~4_combout\ : std_logic;
SIGNAL \Equal5~8_combout\ : std_logic;
SIGNAL \Equal5~9_combout\ : std_logic;
SIGNAL \outp6~0_combout\ : std_logic;
SIGNAL \outp6~q\ : std_logic;
SIGNAL \spkr_outp~7_combout\ : std_logic;
SIGNAL \spkr_outp~8_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \Equal8~1_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \count8~9_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \count8~8_combout\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \count8~7_combout\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \count8~6_combout\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \count8~5_combout\ : std_logic;
SIGNAL \Add7~13\ : std_logic;
SIGNAL \Add7~14_combout\ : std_logic;
SIGNAL \Add7~15\ : std_logic;
SIGNAL \Add7~16_combout\ : std_logic;
SIGNAL \count8~4_combout\ : std_logic;
SIGNAL \Equal7~6_combout\ : std_logic;
SIGNAL \Add7~17\ : std_logic;
SIGNAL \Add7~18_combout\ : std_logic;
SIGNAL \count8~3_combout\ : std_logic;
SIGNAL \Add7~19\ : std_logic;
SIGNAL \Add7~20_combout\ : std_logic;
SIGNAL \Add7~21\ : std_logic;
SIGNAL \Add7~22_combout\ : std_logic;
SIGNAL \count8~2_combout\ : std_logic;
SIGNAL \Add7~23\ : std_logic;
SIGNAL \Add7~24_combout\ : std_logic;
SIGNAL \Equal7~5_combout\ : std_logic;
SIGNAL \Equal7~7_combout\ : std_logic;
SIGNAL \Add7~25\ : std_logic;
SIGNAL \Add7~26_combout\ : std_logic;
SIGNAL \Add7~27\ : std_logic;
SIGNAL \Add7~28_combout\ : std_logic;
SIGNAL \count8~1_combout\ : std_logic;
SIGNAL \Add7~29\ : std_logic;
SIGNAL \Add7~30_combout\ : std_logic;
SIGNAL \count8~0_combout\ : std_logic;
SIGNAL \Add7~31\ : std_logic;
SIGNAL \Add7~32_combout\ : std_logic;
SIGNAL \Add7~33\ : std_logic;
SIGNAL \Add7~34_combout\ : std_logic;
SIGNAL \Add7~35\ : std_logic;
SIGNAL \Add7~36_combout\ : std_logic;
SIGNAL \Add7~37\ : std_logic;
SIGNAL \Add7~38_combout\ : std_logic;
SIGNAL \Add7~39\ : std_logic;
SIGNAL \Add7~40_combout\ : std_logic;
SIGNAL \Add7~41\ : std_logic;
SIGNAL \Add7~42_combout\ : std_logic;
SIGNAL \Add7~43\ : std_logic;
SIGNAL \Add7~44_combout\ : std_logic;
SIGNAL \Add7~45\ : std_logic;
SIGNAL \Add7~46_combout\ : std_logic;
SIGNAL \Add7~47\ : std_logic;
SIGNAL \Add7~48_combout\ : std_logic;
SIGNAL \Add7~49\ : std_logic;
SIGNAL \Add7~50_combout\ : std_logic;
SIGNAL \Add7~51\ : std_logic;
SIGNAL \Add7~52_combout\ : std_logic;
SIGNAL \Add7~53\ : std_logic;
SIGNAL \Add7~54_combout\ : std_logic;
SIGNAL \Add7~55\ : std_logic;
SIGNAL \Add7~56_combout\ : std_logic;
SIGNAL \Add7~57\ : std_logic;
SIGNAL \Add7~58_combout\ : std_logic;
SIGNAL \Add7~59\ : std_logic;
SIGNAL \Add7~60_combout\ : std_logic;
SIGNAL \Add7~61\ : std_logic;
SIGNAL \Add7~62_combout\ : std_logic;
SIGNAL \Equal7~8_combout\ : std_logic;
SIGNAL \Equal7~9_combout\ : std_logic;
SIGNAL \Equal7~3_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Equal7~2_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \Equal7~4_combout\ : std_logic;
SIGNAL \Equal7~10_combout\ : std_logic;
SIGNAL \outp8~0_combout\ : std_logic;
SIGNAL \outp8~q\ : std_logic;
SIGNAL \spkr_outp~2_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \spkr_outp~9_combout\ : std_logic;
SIGNAL \Equal15~0_combout\ : std_logic;
SIGNAL \Equal15~1_combout\ : std_logic;
SIGNAL \spkr_outp~10_combout\ : std_logic;
SIGNAL \spkr_outp~11_combout\ : std_logic;
SIGNAL \spkr_outp~12_combout\ : std_logic;
SIGNAL \spkr_outp$latch~combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \led_out[0]$latch~combout\ : std_logic;
SIGNAL \Equal10~1_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \led_out[1]~0_combout\ : std_logic;
SIGNAL \led_out[1]~1_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \led_out[1]$latch~combout\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \led_out[2]$latch~combout\ : std_logic;
SIGNAL \comb~8_combout\ : std_logic;
SIGNAL \led_out[3]$latch~combout\ : std_logic;
SIGNAL \comb~9_combout\ : std_logic;
SIGNAL \led_out[4]$latch~combout\ : std_logic;
SIGNAL \comb~11_combout\ : std_logic;
SIGNAL \led_out[5]$latch~combout\ : std_logic;
SIGNAL \comb~12_combout\ : std_logic;
SIGNAL \led_out[6]$latch~combout\ : std_logic;
SIGNAL \comb~10_combout\ : std_logic;
SIGNAL \led_out[7]$latch~combout\ : std_logic;
SIGNAL count8 : std_logic_vector(31 DOWNTO 0);
SIGNAL count2 : std_logic_vector(31 DOWNTO 0);
SIGNAL count7 : std_logic_vector(31 DOWNTO 0);
SIGNAL count1 : std_logic_vector(31 DOWNTO 0);
SIGNAL count4 : std_logic_vector(31 DOWNTO 0);
SIGNAL count3 : std_logic_vector(31 DOWNTO 0);
SIGNAL count5 : std_logic_vector(31 DOWNTO 0);
SIGNAL count6 : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_50 <= clk_50;
ww_sw <= sw;
spkr_outp <= ww_spkr_outp;
led_out <= ww_led_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y23_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X0_Y3_N16
\spkr_outp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spkr_outp$latch~combout\,
	devoe => ww_devoe,
	o => \spkr_outp~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\led_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_out[0]$latch~combout\,
	devoe => ww_devoe,
	o => \led_out[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\led_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_out[1]$latch~combout\,
	devoe => ww_devoe,
	o => \led_out[1]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\led_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_out[2]$latch~combout\,
	devoe => ww_devoe,
	o => \led_out[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\led_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_out[3]$latch~combout\,
	devoe => ww_devoe,
	o => \led_out[3]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\led_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_out[4]$latch~combout\,
	devoe => ww_devoe,
	o => \led_out[4]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\led_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_out[5]$latch~combout\,
	devoe => ww_devoe,
	o => \led_out[5]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\led_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_out[6]$latch~combout\,
	devoe => ww_devoe,
	o => \led_out[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\led_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_out[7]$latch~combout\,
	devoe => ww_devoe,
	o => \led_out[7]~output_o\);

-- Location: IOIBUF_X14_Y0_N1
\sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: LCCOMB_X6_Y3_N14
\Equal11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = (!\sw[7]~input_o\ & (!\sw[6]~input_o\ & !\sw[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[7]~input_o\,
	datab => \sw[6]~input_o\,
	datac => \sw[5]~input_o\,
	combout => \Equal11~0_combout\);

-- Location: IOIBUF_X8_Y0_N15
\sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: IOIBUF_X6_Y0_N8
\sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: IOIBUF_X6_Y0_N29
\sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: LCCOMB_X6_Y3_N16
\Equal12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal12~0_combout\ = (\sw[2]~input_o\ & (\sw[3]~input_o\ & \sw[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[2]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \Equal12~0_combout\);

-- Location: IOIBUF_X3_Y0_N1
\sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: LCCOMB_X7_Y3_N8
\Equal11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal11~1_combout\ = (\Equal11~0_combout\ & (\sw[4]~input_o\ & (\Equal12~0_combout\ & \sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~0_combout\,
	datab => \sw[4]~input_o\,
	datac => \Equal12~0_combout\,
	datad => \sw[0]~input_o\,
	combout => \Equal11~1_combout\);

-- Location: IOIBUF_X0_Y13_N15
\clk_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50,
	o => \clk_50~input_o\);

-- Location: CLKCTRL_G2
\clk_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X9_Y6_N0
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = count3(0) $ (GND)
-- \Add2~1\ = CARRY(!count3(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count3(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X8_Y6_N6
\count3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count3~1_combout\ = (!\Add2~0_combout\ & !\Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~0_combout\,
	datad => \Equal2~10_combout\,
	combout => \count3~1_combout\);

-- Location: FF_X9_Y6_N3
\count3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \count3~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(0));

-- Location: LCCOMB_X9_Y6_N2
\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (count3(1) & (!\Add2~1\)) # (!count3(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!count3(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count3(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X8_Y6_N16
\count3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count3~2_combout\ = (\Add2~2_combout\ & !\Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datad => \Equal2~10_combout\,
	combout => \count3~2_combout\);

-- Location: FF_X9_Y6_N17
\count3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \count3~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(1));

-- Location: LCCOMB_X9_Y6_N4
\Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (count3(2) & (\Add2~3\ $ (GND))) # (!count3(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((count3(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count3(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X8_Y6_N0
\count3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count3~0_combout\ = (\Add2~4_combout\ & !\Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~4_combout\,
	datad => \Equal2~10_combout\,
	combout => \count3~0_combout\);

-- Location: FF_X9_Y6_N29
\count3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \count3~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(2));

-- Location: LCCOMB_X9_Y6_N6
\Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (count3(3) & (!\Add2~5\)) # (!count3(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!count3(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count3(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: FF_X9_Y6_N7
\count3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(3));

-- Location: LCCOMB_X9_Y6_N8
\Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (count3(4) & (\Add2~7\ $ (GND))) # (!count3(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((count3(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count3(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: FF_X9_Y6_N9
\count3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(4));

-- Location: LCCOMB_X9_Y6_N10
\Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (count3(5) & (!\Add2~9\)) # (!count3(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!count3(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count3(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: FF_X9_Y6_N11
\count3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(5));

-- Location: LCCOMB_X9_Y6_N12
\Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (count3(6) & (\Add2~11\ $ (GND))) # (!count3(6) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((count3(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count3(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: FF_X9_Y6_N13
\count3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(6));

-- Location: LCCOMB_X9_Y6_N14
\Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (count3(7) & (!\Add2~13\)) # (!count3(7) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!count3(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count3(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X8_Y6_N10
\count3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count3~3_combout\ = (!\Equal2~10_combout\ & \Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~10_combout\,
	datac => \Add2~14_combout\,
	combout => \count3~3_combout\);

-- Location: FF_X8_Y6_N11
\count3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(7));

-- Location: LCCOMB_X9_Y6_N16
\Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (count3(8) & (\Add2~15\ $ (GND))) # (!count3(8) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((count3(8) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count3(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X8_Y6_N14
\count3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count3~4_combout\ = (!\Equal2~10_combout\ & \Add2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~10_combout\,
	datad => \Add2~16_combout\,
	combout => \count3~4_combout\);

-- Location: FF_X8_Y6_N15
\count3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(8));

-- Location: LCCOMB_X9_Y6_N18
\Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (count3(9) & (!\Add2~17\)) # (!count3(9) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!count3(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count3(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: FF_X9_Y6_N19
\count3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(9));

-- Location: LCCOMB_X9_Y6_N20
\Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (count3(10) & (\Add2~19\ $ (GND))) # (!count3(10) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((count3(10) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count3(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X8_Y6_N24
\count3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count3~5_combout\ = (!\Equal2~10_combout\ & \Add2~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~10_combout\,
	datad => \Add2~20_combout\,
	combout => \count3~5_combout\);

-- Location: FF_X8_Y6_N25
\count3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(10));

-- Location: LCCOMB_X9_Y6_N22
\Add2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (count3(11) & (!\Add2~21\)) # (!count3(11) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!count3(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count3(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: FF_X9_Y6_N23
\count3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(11));

-- Location: LCCOMB_X8_Y6_N22
\Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (!count3(11) & (count3(10) & (count3(8) & !count3(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count3(11),
	datab => count3(10),
	datac => count3(8),
	datad => count3(9),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X8_Y6_N8
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!count3(3) & (!count3(0) & (!count3(1) & count3(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count3(3),
	datab => count3(0),
	datac => count3(1),
	datad => count3(2),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X9_Y6_N24
\Add2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (count3(12) & (\Add2~23\ $ (GND))) # (!count3(12) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((count3(12) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count3(12),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: FF_X9_Y6_N25
\count3[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(12));

-- Location: LCCOMB_X9_Y6_N26
\Add2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (count3(13) & (!\Add2~25\)) # (!count3(13) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!count3(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count3(13),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: FF_X9_Y6_N27
\count3[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(13));

-- Location: LCCOMB_X9_Y6_N28
\Add2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (count3(14) & (\Add2~27\ $ (GND))) # (!count3(14) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((count3(14) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count3(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X8_Y6_N28
\count3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count3~6_combout\ = (!\Equal2~10_combout\ & \Add2~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~10_combout\,
	datad => \Add2~28_combout\,
	combout => \count3~6_combout\);

-- Location: FF_X8_Y6_N29
\count3[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(14));

-- Location: LCCOMB_X9_Y6_N30
\Add2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (count3(15) & (!\Add2~29\)) # (!count3(15) & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!count3(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count3(15),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: FF_X9_Y6_N31
\count3[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(15));

-- Location: LCCOMB_X8_Y6_N26
\Equal2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (!count3(13) & (count3(14) & (!count3(15) & !count3(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count3(13),
	datab => count3(14),
	datac => count3(15),
	datad => count3(12),
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X8_Y6_N20
\Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (count3(7) & (!count3(5) & (!count3(6) & !count3(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count3(7),
	datab => count3(5),
	datac => count3(6),
	datad => count3(4),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X8_Y6_N12
\Equal2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~2_combout\ & (\Equal2~0_combout\ & (\Equal2~3_combout\ & \Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~2_combout\,
	datab => \Equal2~0_combout\,
	datac => \Equal2~3_combout\,
	datad => \Equal2~1_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X9_Y5_N0
\Add2~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (count3(16) & (\Add2~31\ $ (GND))) # (!count3(16) & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((count3(16) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count3(16),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X8_Y6_N30
\count3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count3~7_combout\ = (\Add2~32_combout\ & !\Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~32_combout\,
	datad => \Equal2~10_combout\,
	combout => \count3~7_combout\);

-- Location: FF_X8_Y6_N31
\count3[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(16));

-- Location: LCCOMB_X9_Y5_N2
\Add2~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (count3(17) & (!\Add2~33\)) # (!count3(17) & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!count3(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count3(17),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: FF_X9_Y5_N3
\count3[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(17));

-- Location: LCCOMB_X9_Y5_N4
\Add2~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (count3(18) & (\Add2~35\ $ (GND))) # (!count3(18) & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((count3(18) & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count3(18),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: FF_X9_Y5_N5
\count3[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(18));

-- Location: LCCOMB_X9_Y5_N6
\Add2~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (count3(19) & (!\Add2~37\)) # (!count3(19) & ((\Add2~37\) # (GND)))
-- \Add2~39\ = CARRY((!\Add2~37\) # (!count3(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count3(19),
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: FF_X9_Y5_N7
\count3[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(19));

-- Location: LCCOMB_X9_Y5_N8
\Add2~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (count3(20) & (\Add2~39\ $ (GND))) # (!count3(20) & (!\Add2~39\ & VCC))
-- \Add2~41\ = CARRY((count3(20) & !\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count3(20),
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: FF_X9_Y5_N9
\count3[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(20));

-- Location: LCCOMB_X9_Y5_N10
\Add2~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (count3(21) & (!\Add2~41\)) # (!count3(21) & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!count3(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count3(21),
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: FF_X9_Y5_N11
\count3[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(21));

-- Location: LCCOMB_X9_Y5_N12
\Add2~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (count3(22) & (\Add2~43\ $ (GND))) # (!count3(22) & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((count3(22) & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count3(22),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: FF_X9_Y5_N13
\count3[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(22));

-- Location: LCCOMB_X9_Y5_N14
\Add2~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (count3(23) & (!\Add2~45\)) # (!count3(23) & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!count3(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count3(23),
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: FF_X9_Y5_N15
\count3[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(23));

-- Location: LCCOMB_X8_Y5_N0
\Equal2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = (!count3(23) & (!count3(20) & (!count3(22) & !count3(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count3(23),
	datab => count3(20),
	datac => count3(22),
	datad => count3(21),
	combout => \Equal2~6_combout\);

-- Location: LCCOMB_X8_Y6_N4
\Equal2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = (count3(16) & (!count3(19) & (!count3(18) & !count3(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count3(16),
	datab => count3(19),
	datac => count3(18),
	datad => count3(17),
	combout => \Equal2~5_combout\);

-- Location: LCCOMB_X9_Y5_N16
\Add2~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (count3(24) & (\Add2~47\ $ (GND))) # (!count3(24) & (!\Add2~47\ & VCC))
-- \Add2~49\ = CARRY((count3(24) & !\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count3(24),
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: FF_X9_Y5_N17
\count3[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(24));

-- Location: LCCOMB_X9_Y5_N18
\Add2~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (count3(25) & (!\Add2~49\)) # (!count3(25) & ((\Add2~49\) # (GND)))
-- \Add2~51\ = CARRY((!\Add2~49\) # (!count3(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count3(25),
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: FF_X9_Y5_N19
\count3[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(25));

-- Location: LCCOMB_X9_Y5_N20
\Add2~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (count3(26) & (\Add2~51\ $ (GND))) # (!count3(26) & (!\Add2~51\ & VCC))
-- \Add2~53\ = CARRY((count3(26) & !\Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count3(26),
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: FF_X9_Y5_N21
\count3[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(26));

-- Location: LCCOMB_X9_Y5_N22
\Add2~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (count3(27) & (!\Add2~53\)) # (!count3(27) & ((\Add2~53\) # (GND)))
-- \Add2~55\ = CARRY((!\Add2~53\) # (!count3(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count3(27),
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: FF_X9_Y5_N23
\count3[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(27));

-- Location: LCCOMB_X8_Y5_N30
\Equal2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~7_combout\ = (!count3(27) & (!count3(24) & (!count3(26) & !count3(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count3(27),
	datab => count3(24),
	datac => count3(26),
	datad => count3(25),
	combout => \Equal2~7_combout\);

-- Location: LCCOMB_X9_Y5_N24
\Add2~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (count3(28) & (\Add2~55\ $ (GND))) # (!count3(28) & (!\Add2~55\ & VCC))
-- \Add2~57\ = CARRY((count3(28) & !\Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count3(28),
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: FF_X9_Y5_N25
\count3[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(28));

-- Location: LCCOMB_X9_Y5_N26
\Add2~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (count3(29) & (!\Add2~57\)) # (!count3(29) & ((\Add2~57\) # (GND)))
-- \Add2~59\ = CARRY((!\Add2~57\) # (!count3(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count3(29),
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: FF_X9_Y5_N27
\count3[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(29));

-- Location: LCCOMB_X9_Y5_N28
\Add2~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = (count3(30) & (\Add2~59\ $ (GND))) # (!count3(30) & (!\Add2~59\ & VCC))
-- \Add2~61\ = CARRY((count3(30) & !\Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count3(30),
	datad => VCC,
	cin => \Add2~59\,
	combout => \Add2~60_combout\,
	cout => \Add2~61\);

-- Location: FF_X9_Y5_N29
\count3[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(30));

-- Location: LCCOMB_X9_Y5_N30
\Add2~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~62_combout\ = count3(31) $ (\Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count3(31),
	cin => \Add2~61\,
	combout => \Add2~62_combout\);

-- Location: FF_X9_Y5_N31
\count3[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(31));

-- Location: LCCOMB_X8_Y5_N12
\Equal2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~8_combout\ = (!count3(28) & (!count3(30) & (!count3(31) & !count3(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count3(28),
	datab => count3(30),
	datac => count3(31),
	datad => count3(29),
	combout => \Equal2~8_combout\);

-- Location: LCCOMB_X8_Y5_N22
\Equal2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~9_combout\ = (\Equal2~7_combout\ & \Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~7_combout\,
	datad => \Equal2~8_combout\,
	combout => \Equal2~9_combout\);

-- Location: LCCOMB_X8_Y6_N18
\Equal2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~10_combout\ = (\Equal2~4_combout\ & (\Equal2~6_combout\ & (\Equal2~5_combout\ & \Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~4_combout\,
	datab => \Equal2~6_combout\,
	datac => \Equal2~5_combout\,
	datad => \Equal2~9_combout\,
	combout => \Equal2~10_combout\);

-- Location: LCCOMB_X7_Y3_N6
\outp3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outp3~0_combout\ = \outp3~q\ $ (\Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \outp3~q\,
	datad => \Equal2~10_combout\,
	combout => \outp3~0_combout\);

-- Location: FF_X7_Y3_N7
outp3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \outp3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outp3~q\);

-- Location: LCCOMB_X7_Y3_N4
\Equal12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal12~1_combout\ = (\Equal12~0_combout\ & (\sw[0]~input_o\ & (!\sw[4]~input_o\ & \Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~0_combout\,
	datab => \sw[0]~input_o\,
	datac => \sw[4]~input_o\,
	datad => \Equal11~0_combout\,
	combout => \Equal12~1_combout\);

-- Location: LCCOMB_X6_Y3_N8
\Equal14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal14~0_combout\ = (\Equal11~0_combout\ & (!\sw[3]~input_o\ & !\sw[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~0_combout\,
	datac => \sw[3]~input_o\,
	datad => \sw[4]~input_o\,
	combout => \Equal14~0_combout\);

-- Location: LCCOMB_X7_Y3_N18
\Equal13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal13~0_combout\ = (\sw[1]~input_o\ & (\sw[0]~input_o\ & (\sw[2]~input_o\ & \Equal14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \sw[2]~input_o\,
	datad => \Equal14~0_combout\,
	combout => \Equal13~0_combout\);

-- Location: LCCOMB_X21_Y2_N0
\Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = count4(0) $ (GND)
-- \Add3~1\ = CARRY(!count4(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count4(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X22_Y2_N20
\count4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count4~2_combout\ = (!\Add3~0_combout\ & !\Equal3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~0_combout\,
	datad => \Equal3~10_combout\,
	combout => \count4~2_combout\);

-- Location: FF_X22_Y2_N21
\count4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count4(0));

-- Location: LCCOMB_X21_Y2_N2
\Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (count4(1) & (!\Add3~1\)) # (!count4(1) & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!count4(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count4(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X22_Y2_N6
\count4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count4~3_combout\ = (\Add3~2_combout\ & !\Equal3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datad => \Equal3~10_combout\,
	combout => \count4~3_combout\);

-- Location: FF_X22_Y2_N7
\count4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count4(1));

-- Location: LCCOMB_X21_Y2_N4
\Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (count4(2) & (\Add3~3\ $ (GND))) # (!count4(2) & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((count4(2) & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count4(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X22_Y2_N8
\count4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count4~0_combout\ = (\Add3~4_combout\ & !\Equal3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~4_combout\,
	datad => \Equal3~10_combout\,
	combout => \count4~0_combout\);

-- Location: FF_X22_Y2_N9
\count4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count4(2));

-- Location: LCCOMB_X21_Y2_N6
\Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (count4(3) & (!\Add3~5\)) # (!count4(3) & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!count4(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count4(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X22_Y2_N30
\count4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count4~1_combout\ = (\Add3~6_combout\ & !\Equal3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~6_combout\,
	datad => \Equal3~10_combout\,
	combout => \count4~1_combout\);

-- Location: FF_X22_Y2_N31
\count4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count4(3));

-- Location: LCCOMB_X21_Y2_N8
\Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (count4(4) & (\Add3~7\ $ (GND))) # (!count4(4) & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((count4(4) & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count4(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: FF_X21_Y2_N9
\count4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count4(4));

-- Location: LCCOMB_X21_Y2_N10
\Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (count4(5) & (!\Add3~9\)) # (!count4(5) & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!count4(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count4(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X20_Y2_N20
\count4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count4~4_combout\ = (\Add3~10_combout\ & !\Equal3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~10_combout\,
	datad => \Equal3~10_combout\,
	combout => \count4~4_combout\);

-- Location: FF_X20_Y2_N21
\count4[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count4(5));

-- Location: LCCOMB_X21_Y2_N12
\Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (count4(6) & (\Add3~11\ $ (GND))) # (!count4(6) & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((count4(6) & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count4(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: FF_X21_Y2_N13
\count4[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count4(6));

-- Location: LCCOMB_X21_Y2_N14
\Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (count4(7) & (!\Add3~13\)) # (!count4(7) & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!count4(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count4(7),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: FF_X21_Y2_N15
\count4[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count4(7));

-- Location: LCCOMB_X21_Y2_N16
\Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (count4(8) & (\Add3~15\ $ (GND))) # (!count4(8) & (!\Add3~15\ & VCC))
-- \Add3~17\ = CARRY((count4(8) & !\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count4(8),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X20_Y2_N4
\count4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count4~5_combout\ = (!\Equal3~10_combout\ & \Add3~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~10_combout\,
	datad => \Add3~16_combout\,
	combout => \count4~5_combout\);

-- Location: FF_X20_Y2_N5
\count4[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count4(8));

-- Location: LCCOMB_X21_Y2_N18
\Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (count4(9) & (!\Add3~17\)) # (!count4(9) & ((\Add3~17\) # (GND)))
-- \Add3~19\ = CARRY((!\Add3~17\) # (!count4(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count4(9),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: FF_X21_Y2_N19
\count4[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count4(9));

-- Location: LCCOMB_X21_Y2_N20
\Add3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (count4(10) & (\Add3~19\ $ (GND))) # (!count4(10) & (!\Add3~19\ & VCC))
-- \Add3~21\ = CARRY((count4(10) & !\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count4(10),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: FF_X21_Y2_N21
\count4[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count4(10));

-- Location: LCCOMB_X21_Y2_N22
\Add3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (count4(11) & (!\Add3~21\)) # (!count4(11) & ((\Add3~21\) # (GND)))
-- \Add3~23\ = CARRY((!\Add3~21\) # (!count4(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count4(11),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: FF_X21_Y2_N23
\count4[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count4(11));

-- Location: LCCOMB_X21_Y2_N24
\Add3~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (count4(12) & (\Add3~23\ $ (GND))) # (!count4(12) & (!\Add3~23\ & VCC))
-- \Add3~25\ = CARRY((count4(12) & !\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count4(12),
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X20_Y2_N16
\count4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count4~6_combout\ = (!\Equal3~10_combout\ & \Add3~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~10_combout\,
	datad => \Add3~24_combout\,
	combout => \count4~6_combout\);

-- Location: FF_X20_Y2_N17
\count4[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count4(12));

-- Location: LCCOMB_X21_Y2_N26
\Add3~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (count4(13) & (!\Add3~25\)) # (!count4(13) & ((\Add3~25\) # (GND)))
-- \Add3~27\ = CARRY((!\Add3~25\) # (!count4(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count4(13),
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X20_Y2_N6
\count4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count4~7_combout\ = (!\Equal3~10_combout\ & \Add3~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~10_combout\,
	datad => \Add3~26_combout\,
	combout => \count4~7_combout\);

-- Location: FF_X20_Y2_N7
\count4[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count4~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count4(13));

-- Location: LCCOMB_X21_Y2_N28
\Add3~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (count4(14) & (\Add3~27\ $ (GND))) # (!count4(14) & (!\Add3~27\ & VCC))
-- \Add3~29\ = CARRY((count4(14) & !\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count4(14),
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: FF_X21_Y2_N29
\count4[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count4(14));

-- Location: LCCOMB_X21_Y2_N30
\Add3~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (count4(15) & (!\Add3~29\)) # (!count4(15) & ((\Add3~29\) # (GND)))
-- \Add3~31\ = CARRY((!\Add3~29\) # (!count4(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count4(15),
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: FF_X21_Y2_N31
\count4[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count4(15));

-- Location: LCCOMB_X21_Y1_N0
\Add3~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (count4(16) & (\Add3~31\ $ (GND))) # (!count4(16) & (!\Add3~31\ & VCC))
-- \Add3~33\ = CARRY((count4(16) & !\Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count4(16),
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: LCCOMB_X20_Y2_N12
\count4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count4~8_combout\ = (!\Equal3~10_combout\ & \Add3~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~10_combout\,
	datad => \Add3~32_combout\,
	combout => \count4~8_combout\);

-- Location: FF_X20_Y2_N13
\count4[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count4(16));

-- Location: LCCOMB_X21_Y1_N2
\Add3~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (count4(17) & (!\Add3~33\)) # (!count4(17) & ((\Add3~33\) # (GND)))
-- \Add3~35\ = CARRY((!\Add3~33\) # (!count4(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count4(17),
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: FF_X21_Y1_N3
\count4[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count4(17));

-- Location: LCCOMB_X21_Y1_N4
\Add3~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = (count4(18) & (\Add3~35\ $ (GND))) # (!count4(18) & (!\Add3~35\ & VCC))
-- \Add3~37\ = CARRY((count4(18) & !\Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count4(18),
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

-- Location: FF_X21_Y1_N5
\count4[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count4(18));

-- Location: LCCOMB_X21_Y1_N6
\Add3~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (count4(19) & (!\Add3~37\)) # (!count4(19) & ((\Add3~37\) # (GND)))
-- \Add3~39\ = CARRY((!\Add3~37\) # (!count4(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count4(19),
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

-- Location: FF_X21_Y1_N7
\count4[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count4(19));

-- Location: LCCOMB_X20_Y2_N22
\Equal3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~5_combout\ = (count4(16) & (!count4(19) & (!count4(18) & !count4(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count4(16),
	datab => count4(19),
	datac => count4(18),
	datad => count4(17),
	combout => \Equal3~5_combout\);

-- Location: LCCOMB_X21_Y1_N8
\Add3~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = (count4(20) & (\Add3~39\ $ (GND))) # (!count4(20) & (!\Add3~39\ & VCC))
-- \Add3~41\ = CARRY((count4(20) & !\Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count4(20),
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~40_combout\,
	cout => \Add3~41\);

-- Location: FF_X21_Y1_N9
\count4[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count4(20));

-- Location: LCCOMB_X21_Y1_N10
\Add3~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (count4(21) & (!\Add3~41\)) # (!count4(21) & ((\Add3~41\) # (GND)))
-- \Add3~43\ = CARRY((!\Add3~41\) # (!count4(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count4(21),
	datad => VCC,
	cin => \Add3~41\,
	combout => \Add3~42_combout\,
	cout => \Add3~43\);

-- Location: FF_X21_Y1_N11
\count4[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count4(21));

-- Location: LCCOMB_X21_Y1_N12
\Add3~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = (count4(22) & (\Add3~43\ $ (GND))) # (!count4(22) & (!\Add3~43\ & VCC))
-- \Add3~45\ = CARRY((count4(22) & !\Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count4(22),
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

-- Location: FF_X21_Y1_N13
\count4[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count4(22));

-- Location: LCCOMB_X21_Y1_N14
\Add3~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = (count4(23) & (!\Add3~45\)) # (!count4(23) & ((\Add3~45\) # (GND)))
-- \Add3~47\ = CARRY((!\Add3~45\) # (!count4(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count4(23),
	datad => VCC,
	cin => \Add3~45\,
	combout => \Add3~46_combout\,
	cout => \Add3~47\);

-- Location: FF_X21_Y1_N15
\count4[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count4(23));

-- Location: LCCOMB_X20_Y1_N0
\Equal3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~6_combout\ = (!count4(22) & (!count4(20) & (!count4(23) & !count4(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count4(22),
	datab => count4(20),
	datac => count4(23),
	datad => count4(21),
	combout => \Equal3~6_combout\);

-- Location: LCCOMB_X20_Y2_N26
\Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (!count4(10) & (!count4(11) & (count4(8) & !count4(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count4(10),
	datab => count4(11),
	datac => count4(8),
	datad => count4(9),
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X20_Y2_N28
\Equal3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = (count4(13) & (count4(12) & (!count4(15) & !count4(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count4(13),
	datab => count4(12),
	datac => count4(15),
	datad => count4(14),
	combout => \Equal3~3_combout\);

-- Location: LCCOMB_X22_Y2_N12
\Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!count4(1) & (count4(2) & (count4(3) & !count4(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count4(1),
	datab => count4(2),
	datac => count4(3),
	datad => count4(0),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X20_Y2_N18
\Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (count4(5) & (!count4(7) & (!count4(6) & !count4(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count4(5),
	datab => count4(7),
	datac => count4(6),
	datad => count4(4),
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X20_Y2_N14
\Equal3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~4_combout\ = (\Equal3~2_combout\ & (\Equal3~3_combout\ & (\Equal3~0_combout\ & \Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~2_combout\,
	datab => \Equal3~3_combout\,
	datac => \Equal3~0_combout\,
	datad => \Equal3~1_combout\,
	combout => \Equal3~4_combout\);

-- Location: LCCOMB_X21_Y1_N16
\Add3~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~48_combout\ = (count4(24) & (\Add3~47\ $ (GND))) # (!count4(24) & (!\Add3~47\ & VCC))
-- \Add3~49\ = CARRY((count4(24) & !\Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count4(24),
	datad => VCC,
	cin => \Add3~47\,
	combout => \Add3~48_combout\,
	cout => \Add3~49\);

-- Location: FF_X21_Y1_N17
\count4[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count4(24));

-- Location: LCCOMB_X21_Y1_N18
\Add3~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~50_combout\ = (count4(25) & (!\Add3~49\)) # (!count4(25) & ((\Add3~49\) # (GND)))
-- \Add3~51\ = CARRY((!\Add3~49\) # (!count4(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count4(25),
	datad => VCC,
	cin => \Add3~49\,
	combout => \Add3~50_combout\,
	cout => \Add3~51\);

-- Location: FF_X21_Y1_N19
\count4[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count4(25));

-- Location: LCCOMB_X21_Y1_N20
\Add3~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~52_combout\ = (count4(26) & (\Add3~51\ $ (GND))) # (!count4(26) & (!\Add3~51\ & VCC))
-- \Add3~53\ = CARRY((count4(26) & !\Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count4(26),
	datad => VCC,
	cin => \Add3~51\,
	combout => \Add3~52_combout\,
	cout => \Add3~53\);

-- Location: FF_X21_Y1_N21
\count4[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count4(26));

-- Location: LCCOMB_X21_Y1_N22
\Add3~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~54_combout\ = (count4(27) & (!\Add3~53\)) # (!count4(27) & ((\Add3~53\) # (GND)))
-- \Add3~55\ = CARRY((!\Add3~53\) # (!count4(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count4(27),
	datad => VCC,
	cin => \Add3~53\,
	combout => \Add3~54_combout\,
	cout => \Add3~55\);

-- Location: FF_X21_Y1_N23
\count4[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count4(27));

-- Location: LCCOMB_X21_Y1_N24
\Add3~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~56_combout\ = (count4(28) & (\Add3~55\ $ (GND))) # (!count4(28) & (!\Add3~55\ & VCC))
-- \Add3~57\ = CARRY((count4(28) & !\Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count4(28),
	datad => VCC,
	cin => \Add3~55\,
	combout => \Add3~56_combout\,
	cout => \Add3~57\);

-- Location: FF_X21_Y1_N25
\count4[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count4(28));

-- Location: LCCOMB_X21_Y1_N26
\Add3~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~58_combout\ = (count4(29) & (!\Add3~57\)) # (!count4(29) & ((\Add3~57\) # (GND)))
-- \Add3~59\ = CARRY((!\Add3~57\) # (!count4(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count4(29),
	datad => VCC,
	cin => \Add3~57\,
	combout => \Add3~58_combout\,
	cout => \Add3~59\);

-- Location: FF_X21_Y1_N27
\count4[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count4(29));

-- Location: LCCOMB_X21_Y1_N28
\Add3~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~60_combout\ = (count4(30) & (\Add3~59\ $ (GND))) # (!count4(30) & (!\Add3~59\ & VCC))
-- \Add3~61\ = CARRY((count4(30) & !\Add3~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count4(30),
	datad => VCC,
	cin => \Add3~59\,
	combout => \Add3~60_combout\,
	cout => \Add3~61\);

-- Location: FF_X21_Y1_N29
\count4[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count4(30));

-- Location: LCCOMB_X21_Y1_N30
\Add3~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~62_combout\ = count4(31) $ (\Add3~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count4(31),
	cin => \Add3~61\,
	combout => \Add3~62_combout\);

-- Location: FF_X21_Y1_N31
\count4[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count4(31));

-- Location: LCCOMB_X20_Y2_N8
\Equal3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~8_combout\ = (!count4(30) & !count4(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count4(30),
	datad => count4(31),
	combout => \Equal3~8_combout\);

-- Location: LCCOMB_X20_Y1_N22
\Equal3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~7_combout\ = (!count4(24) & (!count4(25) & (!count4(26) & !count4(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count4(24),
	datab => count4(25),
	datac => count4(26),
	datad => count4(27),
	combout => \Equal3~7_combout\);

-- Location: LCCOMB_X20_Y2_N10
\Equal3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~9_combout\ = (!count4(29) & (!count4(28) & (\Equal3~8_combout\ & \Equal3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count4(29),
	datab => count4(28),
	datac => \Equal3~8_combout\,
	datad => \Equal3~7_combout\,
	combout => \Equal3~9_combout\);

-- Location: LCCOMB_X20_Y2_N24
\Equal3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~10_combout\ = (\Equal3~5_combout\ & (\Equal3~6_combout\ & (\Equal3~4_combout\ & \Equal3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~5_combout\,
	datab => \Equal3~6_combout\,
	datac => \Equal3~4_combout\,
	datad => \Equal3~9_combout\,
	combout => \Equal3~10_combout\);

-- Location: LCCOMB_X8_Y2_N0
\outp4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outp4~0_combout\ = \outp4~q\ $ (\Equal3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \outp4~q\,
	datad => \Equal3~10_combout\,
	combout => \outp4~0_combout\);

-- Location: FF_X8_Y2_N1
outp4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \outp4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outp4~q\);

-- Location: LCCOMB_X7_Y3_N14
\spkr_outp~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spkr_outp~5_combout\ = (\Equal12~1_combout\ & (((\outp4~q\)))) # (!\Equal12~1_combout\ & (\outp3~q\ & (\Equal13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outp3~q\,
	datab => \Equal12~1_combout\,
	datac => \Equal13~0_combout\,
	datad => \outp4~q\,
	combout => \spkr_outp~5_combout\);

-- Location: LCCOMB_X9_Y3_N0
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = count2(0) $ (GND)
-- \Add1~1\ = CARRY(!count2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count2(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X10_Y3_N10
\count2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count2~0_combout\ = (!\Add1~0_combout\ & !\Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~0_combout\,
	datad => \Equal1~10_combout\,
	combout => \count2~0_combout\);

-- Location: FF_X9_Y3_N3
\count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \count2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(0));

-- Location: LCCOMB_X9_Y3_N2
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (count2(1) & (!\Add1~1\)) # (!count2(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!count2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X10_Y3_N0
\count2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count2~1_combout\ = (\Add1~2_combout\ & !\Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datad => \Equal1~10_combout\,
	combout => \count2~1_combout\);

-- Location: FF_X9_Y3_N29
\count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \count2~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(1));

-- Location: LCCOMB_X9_Y3_N4
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (count2(2) & (\Add1~3\ $ (GND))) # (!count2(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((count2(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: FF_X9_Y3_N5
\count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(2));

-- Location: LCCOMB_X9_Y3_N6
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (count2(3) & (!\Add1~5\)) # (!count2(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!count2(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: FF_X9_Y3_N7
\count2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(3));

-- Location: LCCOMB_X9_Y3_N8
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (count2(4) & (\Add1~7\ $ (GND))) # (!count2(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((count2(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X10_Y3_N30
\count2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count2~2_combout\ = (!\Equal1~10_combout\ & \Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~10_combout\,
	datad => \Add1~8_combout\,
	combout => \count2~2_combout\);

-- Location: FF_X10_Y3_N31
\count2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(4));

-- Location: LCCOMB_X9_Y3_N10
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (count2(5) & (!\Add1~9\)) # (!count2(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!count2(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X10_Y3_N20
\count2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count2~3_combout\ = (\Add1~10_combout\ & !\Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datac => \Equal1~10_combout\,
	combout => \count2~3_combout\);

-- Location: FF_X10_Y3_N21
\count2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(5));

-- Location: LCCOMB_X9_Y3_N12
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (count2(6) & (\Add1~11\ $ (GND))) # (!count2(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((count2(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: FF_X9_Y3_N13
\count2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(6));

-- Location: LCCOMB_X9_Y3_N14
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (count2(7) & (!\Add1~13\)) # (!count2(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!count2(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X10_Y3_N6
\count2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count2~4_combout\ = (\Add1~14_combout\ & !\Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datac => \Equal1~10_combout\,
	combout => \count2~4_combout\);

-- Location: FF_X10_Y3_N7
\count2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(7));

-- Location: LCCOMB_X10_Y3_N12
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (count2(7) & (count2(5) & (count2(4) & !count2(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count2(7),
	datab => count2(5),
	datac => count2(4),
	datad => count2(6),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X10_Y3_N16
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!count2(1) & (!count2(2) & (!count2(3) & !count2(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count2(1),
	datab => count2(2),
	datac => count2(3),
	datad => count2(0),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X9_Y3_N16
\Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (count2(8) & (\Add1~15\ $ (GND))) # (!count2(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((count2(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X10_Y3_N22
\count2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count2~5_combout\ = (!\Equal1~10_combout\ & \Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datac => \Add1~16_combout\,
	combout => \count2~5_combout\);

-- Location: FF_X10_Y3_N23
\count2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(8));

-- Location: LCCOMB_X9_Y3_N18
\Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (count2(9) & (!\Add1~17\)) # (!count2(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!count2(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: FF_X9_Y3_N19
\count2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(9));

-- Location: LCCOMB_X9_Y3_N20
\Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (count2(10) & (\Add1~19\ $ (GND))) # (!count2(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((count2(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: FF_X9_Y3_N21
\count2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(10));

-- Location: LCCOMB_X9_Y3_N22
\Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (count2(11) & (!\Add1~21\)) # (!count2(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!count2(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X10_Y3_N4
\count2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count2~6_combout\ = (!\Equal1~10_combout\ & \Add1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~10_combout\,
	datad => \Add1~22_combout\,
	combout => \count2~6_combout\);

-- Location: FF_X10_Y3_N5
\count2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(11));

-- Location: LCCOMB_X9_Y3_N24
\Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (count2(12) & (\Add1~23\ $ (GND))) # (!count2(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((count2(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: FF_X9_Y3_N25
\count2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(12));

-- Location: LCCOMB_X9_Y3_N26
\Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (count2(13) & (!\Add1~25\)) # (!count2(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!count2(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X10_Y3_N28
\count2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count2~7_combout\ = (!\Equal1~10_combout\ & \Add1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datac => \Add1~26_combout\,
	combout => \count2~7_combout\);

-- Location: FF_X10_Y3_N29
\count2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(13));

-- Location: LCCOMB_X9_Y3_N28
\Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (count2(14) & (\Add1~27\ $ (GND))) # (!count2(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((count2(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X10_Y3_N14
\count2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count2~8_combout\ = (!\Equal1~10_combout\ & \Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~10_combout\,
	datad => \Add1~28_combout\,
	combout => \count2~8_combout\);

-- Location: FF_X10_Y3_N15
\count2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(14));

-- Location: LCCOMB_X9_Y3_N30
\Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (count2(15) & (!\Add1~29\)) # (!count2(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!count2(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: FF_X9_Y3_N31
\count2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(15));

-- Location: LCCOMB_X10_Y3_N8
\Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!count2(15) & (count2(13) & (count2(14) & !count2(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count2(15),
	datab => count2(13),
	datac => count2(14),
	datad => count2(12),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X10_Y3_N18
\Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (count2(8) & (!count2(9) & (count2(11) & !count2(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count2(8),
	datab => count2(9),
	datac => count2(11),
	datad => count2(10),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X10_Y3_N26
\Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~1_combout\ & (\Equal1~0_combout\ & (\Equal1~3_combout\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal1~3_combout\,
	datad => \Equal1~2_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X9_Y2_N0
\Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (count2(16) & (\Add1~31\ $ (GND))) # (!count2(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((count2(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X10_Y2_N12
\count2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count2~9_combout\ = (!\Equal1~10_combout\ & \Add1~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~10_combout\,
	datac => \Add1~32_combout\,
	combout => \count2~9_combout\);

-- Location: FF_X10_Y2_N13
\count2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(16));

-- Location: LCCOMB_X9_Y2_N2
\Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (count2(17) & (!\Add1~33\)) # (!count2(17) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!count2(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: FF_X9_Y2_N3
\count2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(17));

-- Location: LCCOMB_X9_Y2_N4
\Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (count2(18) & (\Add1~35\ $ (GND))) # (!count2(18) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((count2(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: FF_X9_Y2_N5
\count2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(18));

-- Location: LCCOMB_X9_Y2_N6
\Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (count2(19) & (!\Add1~37\)) # (!count2(19) & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!count2(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: FF_X9_Y2_N7
\count2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(19));

-- Location: LCCOMB_X9_Y2_N8
\Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (count2(20) & (\Add1~39\ $ (GND))) # (!count2(20) & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((count2(20) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: FF_X9_Y2_N9
\count2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(20));

-- Location: LCCOMB_X9_Y2_N10
\Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (count2(21) & (!\Add1~41\)) # (!count2(21) & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!count2(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: FF_X9_Y2_N11
\count2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(21));

-- Location: LCCOMB_X9_Y2_N12
\Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (count2(22) & (\Add1~43\ $ (GND))) # (!count2(22) & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((count2(22) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: FF_X9_Y2_N13
\count2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(22));

-- Location: LCCOMB_X9_Y2_N14
\Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (count2(23) & (!\Add1~45\)) # (!count2(23) & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!count2(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: FF_X9_Y2_N15
\count2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(23));

-- Location: LCCOMB_X10_Y2_N0
\Equal1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (!count2(22) & (!count2(23) & (!count2(21) & !count2(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count2(22),
	datab => count2(23),
	datac => count2(21),
	datad => count2(20),
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X10_Y2_N26
\Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (count2(16) & (!count2(19) & (!count2(18) & !count2(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count2(16),
	datab => count2(19),
	datac => count2(18),
	datad => count2(17),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X9_Y2_N16
\Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (count2(24) & (\Add1~47\ $ (GND))) # (!count2(24) & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((count2(24) & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: FF_X9_Y2_N17
\count2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(24));

-- Location: LCCOMB_X9_Y2_N18
\Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (count2(25) & (!\Add1~49\)) # (!count2(25) & ((\Add1~49\) # (GND)))
-- \Add1~51\ = CARRY((!\Add1~49\) # (!count2(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: FF_X9_Y2_N19
\count2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(25));

-- Location: LCCOMB_X9_Y2_N20
\Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (count2(26) & (\Add1~51\ $ (GND))) # (!count2(26) & (!\Add1~51\ & VCC))
-- \Add1~53\ = CARRY((count2(26) & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: FF_X9_Y2_N21
\count2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(26));

-- Location: LCCOMB_X9_Y2_N22
\Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (count2(27) & (!\Add1~53\)) # (!count2(27) & ((\Add1~53\) # (GND)))
-- \Add1~55\ = CARRY((!\Add1~53\) # (!count2(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: FF_X9_Y2_N23
\count2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(27));

-- Location: LCCOMB_X10_Y2_N30
\Equal1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (!count2(26) & !count2(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count2(26),
	datad => count2(27),
	combout => \Equal1~7_combout\);

-- Location: LCCOMB_X9_Y2_N24
\Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (count2(28) & (\Add1~55\ $ (GND))) # (!count2(28) & (!\Add1~55\ & VCC))
-- \Add1~57\ = CARRY((count2(28) & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: FF_X9_Y2_N25
\count2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(28));

-- Location: LCCOMB_X9_Y2_N26
\Add1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (count2(29) & (!\Add1~57\)) # (!count2(29) & ((\Add1~57\) # (GND)))
-- \Add1~59\ = CARRY((!\Add1~57\) # (!count2(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: FF_X9_Y2_N27
\count2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(29));

-- Location: LCCOMB_X9_Y2_N28
\Add1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (count2(30) & (\Add1~59\ $ (GND))) # (!count2(30) & (!\Add1~59\ & VCC))
-- \Add1~61\ = CARRY((count2(30) & !\Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(30),
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: FF_X9_Y2_N29
\count2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(30));

-- Location: LCCOMB_X9_Y2_N30
\Add1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = count2(31) $ (\Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(31),
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: FF_X9_Y2_N31
\count2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(31));

-- Location: LCCOMB_X10_Y2_N28
\Equal1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (!count2(28) & (!count2(30) & (!count2(29) & !count2(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count2(28),
	datab => count2(30),
	datac => count2(29),
	datad => count2(31),
	combout => \Equal1~8_combout\);

-- Location: LCCOMB_X10_Y2_N2
\Equal1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (!count2(24) & (!count2(25) & (\Equal1~7_combout\ & \Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count2(24),
	datab => count2(25),
	datac => \Equal1~7_combout\,
	datad => \Equal1~8_combout\,
	combout => \Equal1~9_combout\);

-- Location: LCCOMB_X10_Y3_N24
\Equal1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~10_combout\ = (\Equal1~4_combout\ & (\Equal1~6_combout\ & (\Equal1~5_combout\ & \Equal1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => \Equal1~6_combout\,
	datac => \Equal1~5_combout\,
	datad => \Equal1~9_combout\,
	combout => \Equal1~10_combout\);

-- Location: LCCOMB_X7_Y3_N12
\outp2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outp2~0_combout\ = \outp2~q\ $ (\Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \outp2~q\,
	datad => \Equal1~10_combout\,
	combout => \outp2~0_combout\);

-- Location: FF_X7_Y3_N13
outp2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \outp2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outp2~q\);

-- Location: LCCOMB_X7_Y3_N2
\Equal14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal14~1_combout\ = (\Equal14~0_combout\ & (!\sw[2]~input_o\ & (\sw[1]~input_o\ & \sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal14~0_combout\,
	datab => \sw[2]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \Equal14~1_combout\);

-- Location: LCCOMB_X7_Y3_N30
\spkr_outp~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spkr_outp~13_combout\ = (!\sw[2]~input_o\) # (!\sw[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \sw[2]~input_o\,
	combout => \spkr_outp~13_combout\);

-- Location: LCCOMB_X7_Y3_N10
\spkr_outp~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spkr_outp~3_combout\ = ((\spkr_outp~13_combout\) # ((\sw[4]~input_o\) # (!\sw[0]~input_o\))) # (!\Equal11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~0_combout\,
	datab => \spkr_outp~13_combout\,
	datac => \sw[4]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \spkr_outp~3_combout\);

-- Location: LCCOMB_X7_Y6_N0
\Add6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = count7(0) $ (GND)
-- \Add6~1\ = CARRY(!count7(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count7(0),
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: LCCOMB_X7_Y10_N20
\count7[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count7[0]~6_combout\ = !\Add6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add6~0_combout\,
	combout => \count7[0]~6_combout\);

-- Location: FF_X7_Y10_N21
\count7[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count7[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count7(0));

-- Location: LCCOMB_X7_Y6_N2
\Add6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (count7(1) & (!\Add6~1\)) # (!count7(1) & ((\Add6~1\) # (GND)))
-- \Add6~3\ = CARRY((!\Add6~1\) # (!count7(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count7(1),
	datad => VCC,
	cin => \Add6~1\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: FF_X7_Y6_N3
\count7[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count7(1));

-- Location: LCCOMB_X3_Y10_N2
\Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~1_cout\ = CARRY((!count7(0) & count7(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count7(0),
	datab => count7(1),
	datad => VCC,
	cout => \Add0~1_cout\);

-- Location: LCCOMB_X3_Y10_N4
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (count1(2) & (!\Add0~1_cout\)) # (!count1(2) & ((\Add0~1_cout\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1_cout\) # (!count1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(2),
	datad => VCC,
	cin => \Add0~1_cout\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X3_Y10_N5
\count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(2));

-- Location: LCCOMB_X3_Y10_N6
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (count1(3) & (\Add0~3\ $ (GND))) # (!count1(3) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((count1(3) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(3),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X3_Y6_N22
\count1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1~0_combout\ = (\Add0~4_combout\ & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~4_combout\,
	datad => \Equal0~9_combout\,
	combout => \count1~0_combout\);

-- Location: FF_X3_Y6_N23
\count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(3));

-- Location: LCCOMB_X3_Y10_N8
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (count1(4) & (!\Add0~5\)) # (!count1(4) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!count1(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(4),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X3_Y10_N9
\count1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(4));

-- Location: LCCOMB_X3_Y10_N10
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (count1(5) & (\Add0~7\ $ (GND))) # (!count1(5) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((count1(5) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(5),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X3_Y6_N12
\count1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1~1_combout\ = (\Add0~8_combout\ & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	datad => \Equal0~9_combout\,
	combout => \count1~1_combout\);

-- Location: FF_X3_Y6_N13
\count1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(5));

-- Location: LCCOMB_X3_Y10_N12
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (count1(6) & (!\Add0~9\)) # (!count1(6) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!count1(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(6),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X3_Y6_N26
\count1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1~2_combout\ = (\Add0~10_combout\ & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~10_combout\,
	datad => \Equal0~9_combout\,
	combout => \count1~2_combout\);

-- Location: FF_X3_Y6_N27
\count1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(6));

-- Location: LCCOMB_X3_Y10_N14
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (count1(7) & (\Add0~11\ $ (GND))) # (!count1(7) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((count1(7) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(7),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X3_Y6_N28
\count1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1~3_combout\ = (!\Equal0~9_combout\ & \Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datad => \Add0~12_combout\,
	combout => \count1~3_combout\);

-- Location: FF_X3_Y6_N29
\count1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(7));

-- Location: LCCOMB_X3_Y10_N16
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (count1(8) & (!\Add0~13\)) # (!count1(8) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!count1(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(8),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X3_Y10_N17
\count1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(8));

-- Location: LCCOMB_X3_Y10_N18
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (count1(9) & (\Add0~15\ $ (GND))) # (!count1(9) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((count1(9) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(9),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X3_Y6_N14
\count1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1~4_combout\ = (!\Equal0~9_combout\ & \Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datad => \Add0~16_combout\,
	combout => \count1~4_combout\);

-- Location: FF_X3_Y6_N15
\count1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(9));

-- Location: LCCOMB_X3_Y10_N20
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (count1(10) & (!\Add0~17\)) # (!count1(10) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!count1(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(10),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X3_Y6_N4
\count1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1~5_combout\ = (!\Equal0~9_combout\ & \Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datad => \Add0~18_combout\,
	combout => \count1~5_combout\);

-- Location: FF_X3_Y6_N5
\count1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(10));

-- Location: LCCOMB_X3_Y10_N22
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (count1(11) & (\Add0~19\ $ (GND))) # (!count1(11) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((count1(11) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(11),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X3_Y10_N23
\count1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(11));

-- Location: LCCOMB_X3_Y10_N24
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (count1(12) & (!\Add0~21\)) # (!count1(12) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!count1(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(12),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X3_Y6_N24
\count1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1~6_combout\ = (!\Equal0~9_combout\ & \Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datad => \Add0~22_combout\,
	combout => \count1~6_combout\);

-- Location: FF_X3_Y6_N25
\count1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(12));

-- Location: LCCOMB_X3_Y10_N26
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (count1(13) & (\Add0~23\ $ (GND))) # (!count1(13) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((count1(13) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(13),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X3_Y10_N27
\count1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(13));

-- Location: LCCOMB_X3_Y10_N28
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (count1(14) & (!\Add0~25\)) # (!count1(14) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!count1(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(14),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X3_Y10_N29
\count1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(14));

-- Location: LCCOMB_X3_Y10_N30
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (count1(15) & (\Add0~27\ $ (GND))) # (!count1(15) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((count1(15) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(15),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X3_Y10_N0
\count1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1~7_combout\ = (\Add0~28_combout\ & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~28_combout\,
	datad => \Equal0~9_combout\,
	combout => \count1~7_combout\);

-- Location: FF_X3_Y10_N1
\count1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(15));

-- Location: LCCOMB_X3_Y6_N30
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (count1(15) & (count1(12) & (!count1(13) & !count1(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(15),
	datab => count1(12),
	datac => count1(13),
	datad => count1(14),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X3_Y6_N18
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!count1(11) & (count1(9) & (count1(10) & !count1(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(11),
	datab => count1(9),
	datac => count1(10),
	datad => count1(8),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X3_Y9_N0
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (count1(16) & (!\Add0~29\)) # (!count1(16) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!count1(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(16),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X3_Y6_N0
\count1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1~8_combout\ = (\Add0~30_combout\ & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~30_combout\,
	datad => \Equal0~9_combout\,
	combout => \count1~8_combout\);

-- Location: FF_X3_Y6_N1
\count1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(16));

-- Location: LCCOMB_X3_Y9_N2
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (count1(17) & (\Add0~31\ $ (GND))) # (!count1(17) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((count1(17) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(17),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X3_Y9_N3
\count1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(17));

-- Location: LCCOMB_X3_Y9_N4
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (count1(18) & (!\Add0~33\)) # (!count1(18) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!count1(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(18),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X3_Y9_N5
\count1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(18));

-- Location: LCCOMB_X3_Y9_N6
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (count1(19) & (\Add0~35\ $ (GND))) # (!count1(19) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((count1(19) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(19),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X3_Y9_N7
\count1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(19));

-- Location: LCCOMB_X3_Y9_N8
\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (count1(20) & (!\Add0~37\)) # (!count1(20) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!count1(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(20),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: FF_X3_Y9_N9
\count1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(20));

-- Location: LCCOMB_X3_Y9_N10
\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (count1(21) & (\Add0~39\ $ (GND))) # (!count1(21) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((count1(21) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(21),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X3_Y9_N11
\count1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(21));

-- Location: LCCOMB_X3_Y9_N12
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (count1(22) & (!\Add0~41\)) # (!count1(22) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!count1(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(22),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X3_Y9_N13
\count1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(22));

-- Location: LCCOMB_X3_Y9_N14
\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (count1(23) & (\Add0~43\ $ (GND))) # (!count1(23) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((count1(23) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(23),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: FF_X3_Y9_N15
\count1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(23));

-- Location: LCCOMB_X3_Y9_N16
\Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (count1(24) & (!\Add0~45\)) # (!count1(24) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!count1(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(24),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X3_Y9_N17
\count1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(24));

-- Location: LCCOMB_X3_Y9_N18
\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (count1(25) & (\Add0~47\ $ (GND))) # (!count1(25) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((count1(25) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(25),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X3_Y9_N19
\count1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(25));

-- Location: LCCOMB_X3_Y9_N20
\Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (count1(26) & (!\Add0~49\)) # (!count1(26) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!count1(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(26),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X3_Y9_N21
\count1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(26));

-- Location: LCCOMB_X3_Y9_N22
\Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (count1(27) & (\Add0~51\ $ (GND))) # (!count1(27) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((count1(27) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(27),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X3_Y9_N23
\count1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(27));

-- Location: LCCOMB_X3_Y9_N24
\Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (count1(28) & (!\Add0~53\)) # (!count1(28) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!count1(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(28),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: FF_X3_Y9_N25
\count1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(28));

-- Location: LCCOMB_X3_Y9_N26
\Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (count1(29) & (\Add0~55\ $ (GND))) # (!count1(29) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((count1(29) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(29),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: FF_X3_Y9_N27
\count1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(29));

-- Location: LCCOMB_X3_Y9_N28
\Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (count1(30) & (!\Add0~57\)) # (!count1(30) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!count1(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(30),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: FF_X3_Y9_N29
\count1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(30));

-- Location: LCCOMB_X3_Y9_N30
\Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = count1(31) $ (!\Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(31),
	cin => \Add0~59\,
	combout => \Add0~60_combout\);

-- Location: FF_X3_Y9_N31
\count1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(31));

-- Location: LCCOMB_X2_Y9_N6
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!count1(31) & (!count1(30) & (!count1(29) & !count1(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(31),
	datab => count1(30),
	datac => count1(29),
	datad => count1(28),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X2_Y9_N8
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!count1(26) & (!count1(25) & (!count1(27) & !count1(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(26),
	datab => count1(25),
	datac => count1(27),
	datad => count1(24),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X2_Y9_N30
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!count1(22) & (!count1(20) & (!count1(23) & !count1(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(22),
	datab => count1(20),
	datac => count1(23),
	datad => count1(21),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X2_Y9_N28
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!count1(18) & (!count1(19) & (count1(16) & !count1(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(18),
	datab => count1(19),
	datac => count1(16),
	datad => count1(17),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X2_Y9_N12
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~7_combout\ & (\Equal0~6_combout\ & (\Equal0~5_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X3_Y6_N6
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (count1(5) & (count1(7) & (count1(6) & !count1(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(5),
	datab => count1(7),
	datac => count1(6),
	datad => count1(4),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X7_Y10_N2
\Equal6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (count7(0) & !count7(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count7(0),
	datad => count7(1),
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X3_Y6_N20
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Equal0~0_combout\ & (!count1(2) & (count1(3) & \Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => count1(2),
	datac => count1(3),
	datad => \Equal6~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X3_Y6_N10
\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~3_combout\ & (\Equal0~2_combout\ & (\Equal0~8_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X3_Y6_N16
\outp1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outp1~0_combout\ = \outp1~q\ $ (\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \outp1~q\,
	datad => \Equal0~9_combout\,
	combout => \outp1~0_combout\);

-- Location: FF_X3_Y6_N17
outp1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \outp1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outp1~q\);

-- Location: LCCOMB_X7_Y3_N16
\spkr_outp~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spkr_outp~4_combout\ = (\spkr_outp~3_combout\ & ((\Equal14~1_combout\ & (\outp2~q\)) # (!\Equal14~1_combout\ & ((\outp1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outp2~q\,
	datab => \Equal14~1_combout\,
	datac => \spkr_outp~3_combout\,
	datad => \outp1~q\,
	combout => \spkr_outp~4_combout\);

-- Location: LCCOMB_X26_Y2_N0
\Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = count5(0) $ (GND)
-- \Add4~1\ = CARRY(!count5(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count5(0),
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X27_Y2_N8
\count5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count5~1_combout\ = (!\Add4~0_combout\ & !\Equal4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add4~0_combout\,
	datad => \Equal4~10_combout\,
	combout => \count5~1_combout\);

-- Location: FF_X26_Y2_N21
\count5[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \count5~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count5(0));

-- Location: LCCOMB_X26_Y2_N2
\Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (count5(1) & (!\Add4~1\)) # (!count5(1) & ((\Add4~1\) # (GND)))
-- \Add4~3\ = CARRY((!\Add4~1\) # (!count5(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count5(1),
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X27_Y2_N10
\count5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count5~2_combout\ = (\Add4~2_combout\ & !\Equal4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~2_combout\,
	datad => \Equal4~10_combout\,
	combout => \count5~2_combout\);

-- Location: FF_X26_Y2_N13
\count5[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \count5~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count5(1));

-- Location: LCCOMB_X26_Y2_N4
\Add4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (count5(2) & (\Add4~3\ $ (GND))) # (!count5(2) & (!\Add4~3\ & VCC))
-- \Add4~5\ = CARRY((count5(2) & !\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count5(2),
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X27_Y2_N6
\count5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count5~0_combout\ = (\Add4~4_combout\ & !\Equal4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add4~4_combout\,
	datad => \Equal4~10_combout\,
	combout => \count5~0_combout\);

-- Location: FF_X27_Y2_N7
\count5[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count5(2));

-- Location: LCCOMB_X26_Y2_N6
\Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (count5(3) & (!\Add4~5\)) # (!count5(3) & ((\Add4~5\) # (GND)))
-- \Add4~7\ = CARRY((!\Add4~5\) # (!count5(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count5(3),
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: FF_X26_Y2_N7
\count5[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count5(3));

-- Location: LCCOMB_X26_Y2_N8
\Add4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (count5(4) & (\Add4~7\ $ (GND))) # (!count5(4) & (!\Add4~7\ & VCC))
-- \Add4~9\ = CARRY((count5(4) & !\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count5(4),
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: FF_X26_Y2_N9
\count5[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count5(4));

-- Location: LCCOMB_X26_Y2_N10
\Add4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (count5(5) & (!\Add4~9\)) # (!count5(5) & ((\Add4~9\) # (GND)))
-- \Add4~11\ = CARRY((!\Add4~9\) # (!count5(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count5(5),
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: FF_X26_Y2_N11
\count5[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count5(5));

-- Location: LCCOMB_X26_Y2_N12
\Add4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (count5(6) & (\Add4~11\ $ (GND))) # (!count5(6) & (!\Add4~11\ & VCC))
-- \Add4~13\ = CARRY((count5(6) & !\Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count5(6),
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X27_Y2_N26
\count5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count5~3_combout\ = (!\Equal4~10_combout\ & \Add4~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~10_combout\,
	datac => \Add4~12_combout\,
	combout => \count5~3_combout\);

-- Location: FF_X27_Y2_N27
\count5[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count5(6));

-- Location: LCCOMB_X26_Y2_N14
\Add4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (count5(7) & (!\Add4~13\)) # (!count5(7) & ((\Add4~13\) # (GND)))
-- \Add4~15\ = CARRY((!\Add4~13\) # (!count5(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count5(7),
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: FF_X26_Y2_N15
\count5[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count5(7));

-- Location: LCCOMB_X26_Y2_N16
\Add4~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = (count5(8) & (\Add4~15\ $ (GND))) # (!count5(8) & (!\Add4~15\ & VCC))
-- \Add4~17\ = CARRY((count5(8) & !\Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count5(8),
	datad => VCC,
	cin => \Add4~15\,
	combout => \Add4~16_combout\,
	cout => \Add4~17\);

-- Location: LCCOMB_X25_Y2_N8
\count5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count5~4_combout\ = (!\Equal4~10_combout\ & \Add4~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal4~10_combout\,
	datad => \Add4~16_combout\,
	combout => \count5~4_combout\);

-- Location: FF_X25_Y2_N9
\count5[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count5(8));

-- Location: LCCOMB_X26_Y2_N18
\Add4~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~18_combout\ = (count5(9) & (!\Add4~17\)) # (!count5(9) & ((\Add4~17\) # (GND)))
-- \Add4~19\ = CARRY((!\Add4~17\) # (!count5(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count5(9),
	datad => VCC,
	cin => \Add4~17\,
	combout => \Add4~18_combout\,
	cout => \Add4~19\);

-- Location: LCCOMB_X25_Y2_N14
\count5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count5~5_combout\ = (!\Equal4~10_combout\ & \Add4~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal4~10_combout\,
	datad => \Add4~18_combout\,
	combout => \count5~5_combout\);

-- Location: FF_X25_Y2_N15
\count5[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count5~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count5(9));

-- Location: LCCOMB_X26_Y2_N20
\Add4~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~20_combout\ = (count5(10) & (\Add4~19\ $ (GND))) # (!count5(10) & (!\Add4~19\ & VCC))
-- \Add4~21\ = CARRY((count5(10) & !\Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count5(10),
	datad => VCC,
	cin => \Add4~19\,
	combout => \Add4~20_combout\,
	cout => \Add4~21\);

-- Location: LCCOMB_X25_Y2_N16
\count5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count5~6_combout\ = (\Add4~20_combout\ & !\Equal4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add4~20_combout\,
	datad => \Equal4~10_combout\,
	combout => \count5~6_combout\);

-- Location: FF_X25_Y2_N17
\count5[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count5(10));

-- Location: LCCOMB_X26_Y2_N22
\Add4~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~22_combout\ = (count5(11) & (!\Add4~21\)) # (!count5(11) & ((\Add4~21\) # (GND)))
-- \Add4~23\ = CARRY((!\Add4~21\) # (!count5(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count5(11),
	datad => VCC,
	cin => \Add4~21\,
	combout => \Add4~22_combout\,
	cout => \Add4~23\);

-- Location: LCCOMB_X25_Y2_N30
\count5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count5~7_combout\ = (!\Equal4~10_combout\ & \Add4~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal4~10_combout\,
	datad => \Add4~22_combout\,
	combout => \count5~7_combout\);

-- Location: FF_X25_Y2_N31
\count5[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count5(11));

-- Location: LCCOMB_X26_Y2_N24
\Add4~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~24_combout\ = (count5(12) & (\Add4~23\ $ (GND))) # (!count5(12) & (!\Add4~23\ & VCC))
-- \Add4~25\ = CARRY((count5(12) & !\Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count5(12),
	datad => VCC,
	cin => \Add4~23\,
	combout => \Add4~24_combout\,
	cout => \Add4~25\);

-- Location: FF_X26_Y2_N25
\count5[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count5(12));

-- Location: LCCOMB_X26_Y2_N26
\Add4~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~26_combout\ = (count5(13) & (!\Add4~25\)) # (!count5(13) & ((\Add4~25\) # (GND)))
-- \Add4~27\ = CARRY((!\Add4~25\) # (!count5(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count5(13),
	datad => VCC,
	cin => \Add4~25\,
	combout => \Add4~26_combout\,
	cout => \Add4~27\);

-- Location: FF_X26_Y2_N27
\count5[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count5(13));

-- Location: LCCOMB_X26_Y2_N28
\Add4~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~28_combout\ = (count5(14) & (\Add4~27\ $ (GND))) # (!count5(14) & (!\Add4~27\ & VCC))
-- \Add4~29\ = CARRY((count5(14) & !\Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count5(14),
	datad => VCC,
	cin => \Add4~27\,
	combout => \Add4~28_combout\,
	cout => \Add4~29\);

-- Location: FF_X26_Y2_N29
\count5[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count5(14));

-- Location: LCCOMB_X26_Y2_N30
\Add4~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~30_combout\ = (count5(15) & (!\Add4~29\)) # (!count5(15) & ((\Add4~29\) # (GND)))
-- \Add4~31\ = CARRY((!\Add4~29\) # (!count5(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count5(15),
	datad => VCC,
	cin => \Add4~29\,
	combout => \Add4~30_combout\,
	cout => \Add4~31\);

-- Location: FF_X26_Y2_N31
\count5[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count5(15));

-- Location: LCCOMB_X26_Y1_N0
\Add4~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~32_combout\ = (count5(16) & (\Add4~31\ $ (GND))) # (!count5(16) & (!\Add4~31\ & VCC))
-- \Add4~33\ = CARRY((count5(16) & !\Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count5(16),
	datad => VCC,
	cin => \Add4~31\,
	combout => \Add4~32_combout\,
	cout => \Add4~33\);

-- Location: LCCOMB_X27_Y2_N30
\count5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count5~8_combout\ = (\Add4~32_combout\ & !\Equal4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add4~32_combout\,
	datad => \Equal4~10_combout\,
	combout => \count5~8_combout\);

-- Location: FF_X27_Y2_N31
\count5[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count5~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count5(16));

-- Location: LCCOMB_X26_Y1_N2
\Add4~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~34_combout\ = (count5(17) & (!\Add4~33\)) # (!count5(17) & ((\Add4~33\) # (GND)))
-- \Add4~35\ = CARRY((!\Add4~33\) # (!count5(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count5(17),
	datad => VCC,
	cin => \Add4~33\,
	combout => \Add4~34_combout\,
	cout => \Add4~35\);

-- Location: FF_X26_Y1_N3
\count5[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count5(17));

-- Location: LCCOMB_X26_Y1_N4
\Add4~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~36_combout\ = (count5(18) & (\Add4~35\ $ (GND))) # (!count5(18) & (!\Add4~35\ & VCC))
-- \Add4~37\ = CARRY((count5(18) & !\Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count5(18),
	datad => VCC,
	cin => \Add4~35\,
	combout => \Add4~36_combout\,
	cout => \Add4~37\);

-- Location: FF_X26_Y1_N5
\count5[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count5(18));

-- Location: LCCOMB_X26_Y1_N6
\Add4~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~38_combout\ = (count5(19) & (!\Add4~37\)) # (!count5(19) & ((\Add4~37\) # (GND)))
-- \Add4~39\ = CARRY((!\Add4~37\) # (!count5(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count5(19),
	datad => VCC,
	cin => \Add4~37\,
	combout => \Add4~38_combout\,
	cout => \Add4~39\);

-- Location: FF_X26_Y1_N7
\count5[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count5(19));

-- Location: LCCOMB_X26_Y1_N8
\Add4~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~40_combout\ = (count5(20) & (\Add4~39\ $ (GND))) # (!count5(20) & (!\Add4~39\ & VCC))
-- \Add4~41\ = CARRY((count5(20) & !\Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count5(20),
	datad => VCC,
	cin => \Add4~39\,
	combout => \Add4~40_combout\,
	cout => \Add4~41\);

-- Location: FF_X26_Y1_N9
\count5[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count5(20));

-- Location: LCCOMB_X26_Y1_N10
\Add4~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~42_combout\ = (count5(21) & (!\Add4~41\)) # (!count5(21) & ((\Add4~41\) # (GND)))
-- \Add4~43\ = CARRY((!\Add4~41\) # (!count5(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count5(21),
	datad => VCC,
	cin => \Add4~41\,
	combout => \Add4~42_combout\,
	cout => \Add4~43\);

-- Location: FF_X26_Y1_N11
\count5[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count5(21));

-- Location: LCCOMB_X26_Y1_N12
\Add4~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~44_combout\ = (count5(22) & (\Add4~43\ $ (GND))) # (!count5(22) & (!\Add4~43\ & VCC))
-- \Add4~45\ = CARRY((count5(22) & !\Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count5(22),
	datad => VCC,
	cin => \Add4~43\,
	combout => \Add4~44_combout\,
	cout => \Add4~45\);

-- Location: FF_X26_Y1_N13
\count5[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count5(22));

-- Location: LCCOMB_X26_Y1_N14
\Add4~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~46_combout\ = (count5(23) & (!\Add4~45\)) # (!count5(23) & ((\Add4~45\) # (GND)))
-- \Add4~47\ = CARRY((!\Add4~45\) # (!count5(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count5(23),
	datad => VCC,
	cin => \Add4~45\,
	combout => \Add4~46_combout\,
	cout => \Add4~47\);

-- Location: FF_X26_Y1_N15
\count5[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count5(23));

-- Location: LCCOMB_X26_Y1_N16
\Add4~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~48_combout\ = (count5(24) & (\Add4~47\ $ (GND))) # (!count5(24) & (!\Add4~47\ & VCC))
-- \Add4~49\ = CARRY((count5(24) & !\Add4~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count5(24),
	datad => VCC,
	cin => \Add4~47\,
	combout => \Add4~48_combout\,
	cout => \Add4~49\);

-- Location: FF_X26_Y1_N17
\count5[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count5(24));

-- Location: LCCOMB_X26_Y1_N18
\Add4~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~50_combout\ = (count5(25) & (!\Add4~49\)) # (!count5(25) & ((\Add4~49\) # (GND)))
-- \Add4~51\ = CARRY((!\Add4~49\) # (!count5(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count5(25),
	datad => VCC,
	cin => \Add4~49\,
	combout => \Add4~50_combout\,
	cout => \Add4~51\);

-- Location: FF_X26_Y1_N19
\count5[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count5(25));

-- Location: LCCOMB_X26_Y1_N20
\Add4~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~52_combout\ = (count5(26) & (\Add4~51\ $ (GND))) # (!count5(26) & (!\Add4~51\ & VCC))
-- \Add4~53\ = CARRY((count5(26) & !\Add4~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count5(26),
	datad => VCC,
	cin => \Add4~51\,
	combout => \Add4~52_combout\,
	cout => \Add4~53\);

-- Location: FF_X26_Y1_N21
\count5[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count5(26));

-- Location: LCCOMB_X26_Y1_N22
\Add4~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~54_combout\ = (count5(27) & (!\Add4~53\)) # (!count5(27) & ((\Add4~53\) # (GND)))
-- \Add4~55\ = CARRY((!\Add4~53\) # (!count5(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count5(27),
	datad => VCC,
	cin => \Add4~53\,
	combout => \Add4~54_combout\,
	cout => \Add4~55\);

-- Location: FF_X26_Y1_N23
\count5[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count5(27));

-- Location: LCCOMB_X26_Y1_N24
\Add4~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~56_combout\ = (count5(28) & (\Add4~55\ $ (GND))) # (!count5(28) & (!\Add4~55\ & VCC))
-- \Add4~57\ = CARRY((count5(28) & !\Add4~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count5(28),
	datad => VCC,
	cin => \Add4~55\,
	combout => \Add4~56_combout\,
	cout => \Add4~57\);

-- Location: FF_X26_Y1_N25
\count5[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count5(28));

-- Location: LCCOMB_X26_Y1_N26
\Add4~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~58_combout\ = (count5(29) & (!\Add4~57\)) # (!count5(29) & ((\Add4~57\) # (GND)))
-- \Add4~59\ = CARRY((!\Add4~57\) # (!count5(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count5(29),
	datad => VCC,
	cin => \Add4~57\,
	combout => \Add4~58_combout\,
	cout => \Add4~59\);

-- Location: FF_X26_Y1_N27
\count5[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count5(29));

-- Location: LCCOMB_X26_Y1_N28
\Add4~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~60_combout\ = (count5(30) & (\Add4~59\ $ (GND))) # (!count5(30) & (!\Add4~59\ & VCC))
-- \Add4~61\ = CARRY((count5(30) & !\Add4~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count5(30),
	datad => VCC,
	cin => \Add4~59\,
	combout => \Add4~60_combout\,
	cout => \Add4~61\);

-- Location: FF_X26_Y1_N29
\count5[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count5(30));

-- Location: LCCOMB_X26_Y1_N30
\Add4~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~62_combout\ = count5(31) $ (\Add4~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count5(31),
	cin => \Add4~61\,
	combout => \Add4~62_combout\);

-- Location: FF_X26_Y1_N31
\count5[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count5(31));

-- Location: LCCOMB_X27_Y1_N30
\Equal4~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~9_combout\ = (!count5(28) & (!count5(30) & (!count5(29) & !count5(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count5(28),
	datab => count5(30),
	datac => count5(29),
	datad => count5(31),
	combout => \Equal4~9_combout\);

-- Location: LCCOMB_X27_Y2_N12
\Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (count5(2) & (!count5(0) & (!count5(3) & !count5(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count5(2),
	datab => count5(0),
	datac => count5(3),
	datad => count5(1),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X27_Y2_N24
\Equal4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (!count5(5) & (!count5(4) & (count5(6) & !count5(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count5(5),
	datab => count5(4),
	datac => count5(6),
	datad => count5(7),
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X25_Y2_N20
\Equal4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = (count5(11) & (count5(9) & (count5(8) & count5(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count5(11),
	datab => count5(9),
	datac => count5(8),
	datad => count5(10),
	combout => \Equal4~2_combout\);

-- Location: LCCOMB_X27_Y2_N18
\Equal4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~3_combout\ = (!count5(13) & (!count5(12) & (!count5(15) & !count5(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count5(13),
	datab => count5(12),
	datac => count5(15),
	datad => count5(14),
	combout => \Equal4~3_combout\);

-- Location: LCCOMB_X27_Y2_N28
\Equal4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~4_combout\ = (\Equal4~0_combout\ & (\Equal4~1_combout\ & (\Equal4~2_combout\ & \Equal4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \Equal4~1_combout\,
	datac => \Equal4~2_combout\,
	datad => \Equal4~3_combout\,
	combout => \Equal4~4_combout\);

-- Location: LCCOMB_X27_Y1_N16
\Equal4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~8_combout\ = (!count5(24) & (!count5(27) & (!count5(26) & !count5(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count5(24),
	datab => count5(27),
	datac => count5(26),
	datad => count5(25),
	combout => \Equal4~8_combout\);

-- Location: LCCOMB_X27_Y1_N0
\Equal4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~5_combout\ = (!count5(18) & !count5(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count5(18),
	datac => count5(19),
	combout => \Equal4~5_combout\);

-- Location: LCCOMB_X27_Y1_N22
\Equal4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~6_combout\ = (!count5(23) & (!count5(20) & (!count5(22) & !count5(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count5(23),
	datab => count5(20),
	datac => count5(22),
	datad => count5(21),
	combout => \Equal4~6_combout\);

-- Location: LCCOMB_X27_Y2_N20
\Equal4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~7_combout\ = (count5(16) & (\Equal4~5_combout\ & (!count5(17) & \Equal4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count5(16),
	datab => \Equal4~5_combout\,
	datac => count5(17),
	datad => \Equal4~6_combout\,
	combout => \Equal4~7_combout\);

-- Location: LCCOMB_X27_Y2_N2
\Equal4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~10_combout\ = (\Equal4~9_combout\ & (\Equal4~4_combout\ & (\Equal4~8_combout\ & \Equal4~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~9_combout\,
	datab => \Equal4~4_combout\,
	datac => \Equal4~8_combout\,
	datad => \Equal4~7_combout\,
	combout => \Equal4~10_combout\);

-- Location: LCCOMB_X27_Y2_N0
\outp5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outp5~0_combout\ = \outp5~q\ $ (\Equal4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \outp5~q\,
	datad => \Equal4~10_combout\,
	combout => \outp5~0_combout\);

-- Location: FF_X27_Y2_N1
outp5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \outp5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outp5~q\);

-- Location: LCCOMB_X7_Y3_N28
\spkr_outp~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spkr_outp~6_combout\ = (\Equal11~1_combout\ & (((\outp5~q\)))) # (!\Equal11~1_combout\ & ((\spkr_outp~5_combout\) # ((\spkr_outp~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~1_combout\,
	datab => \spkr_outp~5_combout\,
	datac => \spkr_outp~4_combout\,
	datad => \outp5~q\,
	combout => \spkr_outp~6_combout\);

-- Location: LCCOMB_X7_Y6_N4
\Add6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = (count7(2) & (\Add6~3\ $ (GND))) # (!count7(2) & (!\Add6~3\ & VCC))
-- \Add6~5\ = CARRY((count7(2) & !\Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count7(2),
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X6_Y6_N22
\count7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count7~0_combout\ = (!\Equal6~10_combout\ & \Add6~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal6~10_combout\,
	datad => \Add6~4_combout\,
	combout => \count7~0_combout\);

-- Location: FF_X6_Y6_N23
\count7[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count7(2));

-- Location: LCCOMB_X7_Y6_N6
\Add6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (count7(3) & (!\Add6~5\)) # (!count7(3) & ((\Add6~5\) # (GND)))
-- \Add6~7\ = CARRY((!\Add6~5\) # (!count7(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count7(3),
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: FF_X7_Y6_N7
\count7[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count7(3));

-- Location: LCCOMB_X7_Y6_N8
\Add6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = (count7(4) & (\Add6~7\ $ (GND))) # (!count7(4) & (!\Add6~7\ & VCC))
-- \Add6~9\ = CARRY((count7(4) & !\Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count7(4),
	datad => VCC,
	cin => \Add6~7\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

-- Location: FF_X7_Y6_N9
\count7[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count7(4));

-- Location: LCCOMB_X7_Y6_N10
\Add6~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~10_combout\ = (count7(5) & (!\Add6~9\)) # (!count7(5) & ((\Add6~9\) # (GND)))
-- \Add6~11\ = CARRY((!\Add6~9\) # (!count7(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count7(5),
	datad => VCC,
	cin => \Add6~9\,
	combout => \Add6~10_combout\,
	cout => \Add6~11\);

-- Location: FF_X7_Y6_N11
\count7[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count7(5));

-- Location: LCCOMB_X7_Y6_N12
\Add6~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~12_combout\ = (count7(6) & (\Add6~11\ $ (GND))) # (!count7(6) & (!\Add6~11\ & VCC))
-- \Add6~13\ = CARRY((count7(6) & !\Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count7(6),
	datad => VCC,
	cin => \Add6~11\,
	combout => \Add6~12_combout\,
	cout => \Add6~13\);

-- Location: FF_X7_Y6_N13
\count7[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count7(6));

-- Location: LCCOMB_X7_Y6_N14
\Add6~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~14_combout\ = (count7(7) & (!\Add6~13\)) # (!count7(7) & ((\Add6~13\) # (GND)))
-- \Add6~15\ = CARRY((!\Add6~13\) # (!count7(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count7(7),
	datad => VCC,
	cin => \Add6~13\,
	combout => \Add6~14_combout\,
	cout => \Add6~15\);

-- Location: FF_X7_Y6_N15
\count7[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count7(7));

-- Location: LCCOMB_X7_Y6_N16
\Add6~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~16_combout\ = (count7(8) & (\Add6~15\ $ (GND))) # (!count7(8) & (!\Add6~15\ & VCC))
-- \Add6~17\ = CARRY((count7(8) & !\Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count7(8),
	datad => VCC,
	cin => \Add6~15\,
	combout => \Add6~16_combout\,
	cout => \Add6~17\);

-- Location: LCCOMB_X6_Y6_N16
\count7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count7~1_combout\ = (!\Equal6~10_combout\ & \Add6~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal6~10_combout\,
	datad => \Add6~16_combout\,
	combout => \count7~1_combout\);

-- Location: FF_X6_Y6_N17
\count7[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count7(8));

-- Location: LCCOMB_X7_Y6_N18
\Add6~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~18_combout\ = (count7(9) & (!\Add6~17\)) # (!count7(9) & ((\Add6~17\) # (GND)))
-- \Add6~19\ = CARRY((!\Add6~17\) # (!count7(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count7(9),
	datad => VCC,
	cin => \Add6~17\,
	combout => \Add6~18_combout\,
	cout => \Add6~19\);

-- Location: FF_X7_Y6_N19
\count7[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count7(9));

-- Location: LCCOMB_X7_Y6_N20
\Add6~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~20_combout\ = (count7(10) & (\Add6~19\ $ (GND))) # (!count7(10) & (!\Add6~19\ & VCC))
-- \Add6~21\ = CARRY((count7(10) & !\Add6~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count7(10),
	datad => VCC,
	cin => \Add6~19\,
	combout => \Add6~20_combout\,
	cout => \Add6~21\);

-- Location: FF_X7_Y6_N21
\count7[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count7(10));

-- Location: LCCOMB_X7_Y6_N22
\Add6~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~22_combout\ = (count7(11) & (!\Add6~21\)) # (!count7(11) & ((\Add6~21\) # (GND)))
-- \Add6~23\ = CARRY((!\Add6~21\) # (!count7(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count7(11),
	datad => VCC,
	cin => \Add6~21\,
	combout => \Add6~22_combout\,
	cout => \Add6~23\);

-- Location: LCCOMB_X6_Y6_N26
\count7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count7~2_combout\ = (!\Equal6~10_combout\ & \Add6~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal6~10_combout\,
	datad => \Add6~22_combout\,
	combout => \count7~2_combout\);

-- Location: FF_X6_Y6_N27
\count7[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count7(11));

-- Location: LCCOMB_X6_Y6_N12
\Equal6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~3_combout\ = (count7(11) & (count7(8) & (!count7(10) & !count7(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count7(11),
	datab => count7(8),
	datac => count7(10),
	datad => count7(9),
	combout => \Equal6~3_combout\);

-- Location: LCCOMB_X7_Y6_N24
\Add6~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~24_combout\ = (count7(12) & (\Add6~23\ $ (GND))) # (!count7(12) & (!\Add6~23\ & VCC))
-- \Add6~25\ = CARRY((count7(12) & !\Add6~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count7(12),
	datad => VCC,
	cin => \Add6~23\,
	combout => \Add6~24_combout\,
	cout => \Add6~25\);

-- Location: LCCOMB_X6_Y6_N14
\count7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count7~3_combout\ = (!\Equal6~10_combout\ & \Add6~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal6~10_combout\,
	datad => \Add6~24_combout\,
	combout => \count7~3_combout\);

-- Location: FF_X6_Y6_N15
\count7[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count7(12));

-- Location: LCCOMB_X7_Y6_N26
\Add6~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~26_combout\ = (count7(13) & (!\Add6~25\)) # (!count7(13) & ((\Add6~25\) # (GND)))
-- \Add6~27\ = CARRY((!\Add6~25\) # (!count7(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count7(13),
	datad => VCC,
	cin => \Add6~25\,
	combout => \Add6~26_combout\,
	cout => \Add6~27\);

-- Location: FF_X7_Y6_N27
\count7[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count7(13));

-- Location: LCCOMB_X7_Y6_N28
\Add6~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~28_combout\ = (count7(14) & (\Add6~27\ $ (GND))) # (!count7(14) & (!\Add6~27\ & VCC))
-- \Add6~29\ = CARRY((count7(14) & !\Add6~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count7(14),
	datad => VCC,
	cin => \Add6~27\,
	combout => \Add6~28_combout\,
	cout => \Add6~29\);

-- Location: LCCOMB_X6_Y6_N0
\count7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count7~4_combout\ = (!\Equal6~10_combout\ & \Add6~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal6~10_combout\,
	datad => \Add6~28_combout\,
	combout => \count7~4_combout\);

-- Location: FF_X6_Y6_N1
\count7[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count7(14));

-- Location: LCCOMB_X7_Y6_N30
\Add6~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~30_combout\ = (count7(15) & (!\Add6~29\)) # (!count7(15) & ((\Add6~29\) # (GND)))
-- \Add6~31\ = CARRY((!\Add6~29\) # (!count7(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count7(15),
	datad => VCC,
	cin => \Add6~29\,
	combout => \Add6~30_combout\,
	cout => \Add6~31\);

-- Location: LCCOMB_X6_Y6_N6
\count7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count7~5_combout\ = (\Add6~30_combout\ & !\Equal6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~30_combout\,
	datad => \Equal6~10_combout\,
	combout => \count7~5_combout\);

-- Location: FF_X6_Y6_N7
\count7[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count7(15));

-- Location: LCCOMB_X7_Y5_N0
\Add6~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~32_combout\ = (count7(16) & (\Add6~31\ $ (GND))) # (!count7(16) & (!\Add6~31\ & VCC))
-- \Add6~33\ = CARRY((count7(16) & !\Add6~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count7(16),
	datad => VCC,
	cin => \Add6~31\,
	combout => \Add6~32_combout\,
	cout => \Add6~33\);

-- Location: FF_X7_Y5_N1
\count7[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count7(16));

-- Location: LCCOMB_X7_Y5_N2
\Add6~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~34_combout\ = (count7(17) & (!\Add6~33\)) # (!count7(17) & ((\Add6~33\) # (GND)))
-- \Add6~35\ = CARRY((!\Add6~33\) # (!count7(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count7(17),
	datad => VCC,
	cin => \Add6~33\,
	combout => \Add6~34_combout\,
	cout => \Add6~35\);

-- Location: FF_X7_Y5_N3
\count7[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count7(17));

-- Location: LCCOMB_X7_Y5_N4
\Add6~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~36_combout\ = (count7(18) & (\Add6~35\ $ (GND))) # (!count7(18) & (!\Add6~35\ & VCC))
-- \Add6~37\ = CARRY((count7(18) & !\Add6~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count7(18),
	datad => VCC,
	cin => \Add6~35\,
	combout => \Add6~36_combout\,
	cout => \Add6~37\);

-- Location: FF_X7_Y5_N5
\count7[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count7(18));

-- Location: LCCOMB_X7_Y5_N6
\Add6~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~38_combout\ = (count7(19) & (!\Add6~37\)) # (!count7(19) & ((\Add6~37\) # (GND)))
-- \Add6~39\ = CARRY((!\Add6~37\) # (!count7(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count7(19),
	datad => VCC,
	cin => \Add6~37\,
	combout => \Add6~38_combout\,
	cout => \Add6~39\);

-- Location: FF_X7_Y5_N7
\count7[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count7(19));

-- Location: LCCOMB_X7_Y5_N8
\Add6~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~40_combout\ = (count7(20) & (\Add6~39\ $ (GND))) # (!count7(20) & (!\Add6~39\ & VCC))
-- \Add6~41\ = CARRY((count7(20) & !\Add6~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count7(20),
	datad => VCC,
	cin => \Add6~39\,
	combout => \Add6~40_combout\,
	cout => \Add6~41\);

-- Location: FF_X7_Y5_N9
\count7[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count7(20));

-- Location: LCCOMB_X7_Y5_N10
\Add6~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~42_combout\ = (count7(21) & (!\Add6~41\)) # (!count7(21) & ((\Add6~41\) # (GND)))
-- \Add6~43\ = CARRY((!\Add6~41\) # (!count7(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count7(21),
	datad => VCC,
	cin => \Add6~41\,
	combout => \Add6~42_combout\,
	cout => \Add6~43\);

-- Location: FF_X7_Y5_N11
\count7[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count7(21));

-- Location: LCCOMB_X7_Y5_N12
\Add6~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~44_combout\ = (count7(22) & (\Add6~43\ $ (GND))) # (!count7(22) & (!\Add6~43\ & VCC))
-- \Add6~45\ = CARRY((count7(22) & !\Add6~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count7(22),
	datad => VCC,
	cin => \Add6~43\,
	combout => \Add6~44_combout\,
	cout => \Add6~45\);

-- Location: FF_X7_Y5_N13
\count7[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count7(22));

-- Location: LCCOMB_X7_Y5_N14
\Add6~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~46_combout\ = (count7(23) & (!\Add6~45\)) # (!count7(23) & ((\Add6~45\) # (GND)))
-- \Add6~47\ = CARRY((!\Add6~45\) # (!count7(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count7(23),
	datad => VCC,
	cin => \Add6~45\,
	combout => \Add6~46_combout\,
	cout => \Add6~47\);

-- Location: FF_X7_Y5_N15
\count7[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count7(23));

-- Location: LCCOMB_X6_Y5_N10
\Equal6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~6_combout\ = (!count7(23) & (!count7(22) & (!count7(20) & !count7(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count7(23),
	datab => count7(22),
	datac => count7(20),
	datad => count7(21),
	combout => \Equal6~6_combout\);

-- Location: LCCOMB_X6_Y5_N28
\Equal6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~5_combout\ = (!count7(18) & (!count7(19) & (!count7(16) & !count7(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count7(18),
	datab => count7(19),
	datac => count7(16),
	datad => count7(17),
	combout => \Equal6~5_combout\);

-- Location: LCCOMB_X7_Y5_N16
\Add6~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~48_combout\ = (count7(24) & (\Add6~47\ $ (GND))) # (!count7(24) & (!\Add6~47\ & VCC))
-- \Add6~49\ = CARRY((count7(24) & !\Add6~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count7(24),
	datad => VCC,
	cin => \Add6~47\,
	combout => \Add6~48_combout\,
	cout => \Add6~49\);

-- Location: FF_X7_Y5_N17
\count7[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count7(24));

-- Location: LCCOMB_X7_Y5_N18
\Add6~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~50_combout\ = (count7(25) & (!\Add6~49\)) # (!count7(25) & ((\Add6~49\) # (GND)))
-- \Add6~51\ = CARRY((!\Add6~49\) # (!count7(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count7(25),
	datad => VCC,
	cin => \Add6~49\,
	combout => \Add6~50_combout\,
	cout => \Add6~51\);

-- Location: FF_X7_Y5_N19
\count7[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count7(25));

-- Location: LCCOMB_X7_Y5_N20
\Add6~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~52_combout\ = (count7(26) & (\Add6~51\ $ (GND))) # (!count7(26) & (!\Add6~51\ & VCC))
-- \Add6~53\ = CARRY((count7(26) & !\Add6~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count7(26),
	datad => VCC,
	cin => \Add6~51\,
	combout => \Add6~52_combout\,
	cout => \Add6~53\);

-- Location: FF_X7_Y5_N21
\count7[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count7(26));

-- Location: LCCOMB_X7_Y5_N22
\Add6~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~54_combout\ = (count7(27) & (!\Add6~53\)) # (!count7(27) & ((\Add6~53\) # (GND)))
-- \Add6~55\ = CARRY((!\Add6~53\) # (!count7(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count7(27),
	datad => VCC,
	cin => \Add6~53\,
	combout => \Add6~54_combout\,
	cout => \Add6~55\);

-- Location: FF_X7_Y5_N23
\count7[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count7(27));

-- Location: LCCOMB_X6_Y5_N8
\Equal6~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~7_combout\ = (!count7(25) & (!count7(27) & (!count7(26) & !count7(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count7(25),
	datab => count7(27),
	datac => count7(26),
	datad => count7(24),
	combout => \Equal6~7_combout\);

-- Location: LCCOMB_X7_Y5_N24
\Add6~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~56_combout\ = (count7(28) & (\Add6~55\ $ (GND))) # (!count7(28) & (!\Add6~55\ & VCC))
-- \Add6~57\ = CARRY((count7(28) & !\Add6~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count7(28),
	datad => VCC,
	cin => \Add6~55\,
	combout => \Add6~56_combout\,
	cout => \Add6~57\);

-- Location: FF_X7_Y5_N25
\count7[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count7(28));

-- Location: LCCOMB_X7_Y5_N26
\Add6~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~58_combout\ = (count7(29) & (!\Add6~57\)) # (!count7(29) & ((\Add6~57\) # (GND)))
-- \Add6~59\ = CARRY((!\Add6~57\) # (!count7(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count7(29),
	datad => VCC,
	cin => \Add6~57\,
	combout => \Add6~58_combout\,
	cout => \Add6~59\);

-- Location: FF_X7_Y5_N27
\count7[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count7(29));

-- Location: LCCOMB_X7_Y5_N28
\Add6~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~60_combout\ = (count7(30) & (\Add6~59\ $ (GND))) # (!count7(30) & (!\Add6~59\ & VCC))
-- \Add6~61\ = CARRY((count7(30) & !\Add6~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count7(30),
	datad => VCC,
	cin => \Add6~59\,
	combout => \Add6~60_combout\,
	cout => \Add6~61\);

-- Location: FF_X7_Y5_N29
\count7[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count7(30));

-- Location: LCCOMB_X7_Y5_N30
\Add6~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~62_combout\ = count7(31) $ (\Add6~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count7(31),
	cin => \Add6~61\,
	combout => \Add6~62_combout\);

-- Location: FF_X7_Y5_N31
\count7[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count7(31));

-- Location: LCCOMB_X6_Y5_N18
\Equal6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~8_combout\ = (!count7(31) & (!count7(30) & (!count7(29) & !count7(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count7(31),
	datab => count7(30),
	datac => count7(29),
	datad => count7(28),
	combout => \Equal6~8_combout\);

-- Location: LCCOMB_X6_Y5_N0
\Equal6~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~9_combout\ = (\Equal6~6_combout\ & (\Equal6~5_combout\ & (\Equal6~7_combout\ & \Equal6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~6_combout\,
	datab => \Equal6~5_combout\,
	datac => \Equal6~7_combout\,
	datad => \Equal6~8_combout\,
	combout => \Equal6~9_combout\);

-- Location: LCCOMB_X6_Y6_N4
\Equal6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~4_combout\ = (count7(15) & (count7(14) & (count7(12) & !count7(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count7(15),
	datab => count7(14),
	datac => count7(12),
	datad => count7(13),
	combout => \Equal6~4_combout\);

-- Location: LCCOMB_X6_Y6_N24
\Equal6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (!count7(4) & (!count7(7) & (!count7(6) & !count7(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count7(4),
	datab => count7(7),
	datac => count7(6),
	datad => count7(5),
	combout => \Equal6~1_combout\);

-- Location: LCCOMB_X6_Y6_N18
\Equal6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~2_combout\ = (count7(2) & (\Equal6~1_combout\ & (\Equal6~0_combout\ & !count7(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count7(2),
	datab => \Equal6~1_combout\,
	datac => \Equal6~0_combout\,
	datad => count7(3),
	combout => \Equal6~2_combout\);

-- Location: LCCOMB_X6_Y6_N2
\Equal6~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~10_combout\ = (\Equal6~3_combout\ & (\Equal6~9_combout\ & (\Equal6~4_combout\ & \Equal6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~3_combout\,
	datab => \Equal6~9_combout\,
	datac => \Equal6~4_combout\,
	datad => \Equal6~2_combout\,
	combout => \Equal6~10_combout\);

-- Location: LCCOMB_X6_Y6_N30
\outp7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outp7~0_combout\ = \outp7~q\ $ (\Equal6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \outp7~q\,
	datad => \Equal6~10_combout\,
	combout => \outp7~0_combout\);

-- Location: FF_X6_Y6_N31
outp7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \outp7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outp7~q\);

-- Location: LCCOMB_X8_Y10_N2
\Add5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~1_cout\ = CARRY((count7(1) & !count7(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count7(1),
	datab => count7(0),
	datad => VCC,
	cout => \Add5~1_cout\);

-- Location: LCCOMB_X8_Y10_N4
\Add5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (count6(2) & (!\Add5~1_cout\)) # (!count6(2) & ((\Add5~1_cout\) # (GND)))
-- \Add5~3\ = CARRY((!\Add5~1_cout\) # (!count6(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count6(2),
	datad => VCC,
	cin => \Add5~1_cout\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X7_Y10_N16
\count6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count6~0_combout\ = (!\Equal5~9_combout\ & \Add5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal5~9_combout\,
	datad => \Add5~2_combout\,
	combout => \count6~0_combout\);

-- Location: FF_X7_Y10_N17
\count6[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count6(2));

-- Location: LCCOMB_X8_Y10_N6
\Add5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (count6(3) & (\Add5~3\ $ (GND))) # (!count6(3) & (!\Add5~3\ & VCC))
-- \Add5~5\ = CARRY((count6(3) & !\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count6(3),
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: FF_X8_Y10_N7
\count6[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count6(3));

-- Location: LCCOMB_X8_Y10_N8
\Add5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (count6(4) & (!\Add5~5\)) # (!count6(4) & ((\Add5~5\) # (GND)))
-- \Add5~7\ = CARRY((!\Add5~5\) # (!count6(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count6(4),
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: FF_X8_Y10_N9
\count6[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count6(4));

-- Location: LCCOMB_X8_Y10_N10
\Add5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (count6(5) & (\Add5~7\ $ (GND))) # (!count6(5) & (!\Add5~7\ & VCC))
-- \Add5~9\ = CARRY((count6(5) & !\Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count6(5),
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X8_Y10_N0
\count6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count6~1_combout\ = (!\Equal5~9_combout\ & \Add5~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal5~9_combout\,
	datad => \Add5~8_combout\,
	combout => \count6~1_combout\);

-- Location: FF_X8_Y10_N1
\count6[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count6(5));

-- Location: LCCOMB_X8_Y10_N12
\Add5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (count6(6) & (!\Add5~9\)) # (!count6(6) & ((\Add5~9\) # (GND)))
-- \Add5~11\ = CARRY((!\Add5~9\) # (!count6(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count6(6),
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: FF_X8_Y10_N13
\count6[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count6(6));

-- Location: LCCOMB_X8_Y10_N14
\Add5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (count6(7) & (\Add5~11\ $ (GND))) # (!count6(7) & (!\Add5~11\ & VCC))
-- \Add5~13\ = CARRY((count6(7) & !\Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count6(7),
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: FF_X8_Y10_N15
\count6[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count6(7));

-- Location: LCCOMB_X8_Y10_N16
\Add5~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (count6(8) & (!\Add5~13\)) # (!count6(8) & ((\Add5~13\) # (GND)))
-- \Add5~15\ = CARRY((!\Add5~13\) # (!count6(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count6(8),
	datad => VCC,
	cin => \Add5~13\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

-- Location: FF_X8_Y10_N17
\count6[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count6(8));

-- Location: LCCOMB_X8_Y10_N18
\Add5~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = (count6(9) & (\Add5~15\ $ (GND))) # (!count6(9) & (!\Add5~15\ & VCC))
-- \Add5~17\ = CARRY((count6(9) & !\Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count6(9),
	datad => VCC,
	cin => \Add5~15\,
	combout => \Add5~16_combout\,
	cout => \Add5~17\);

-- Location: FF_X8_Y10_N19
\count6[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count6(9));

-- Location: LCCOMB_X8_Y10_N20
\Add5~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = (count6(10) & (!\Add5~17\)) # (!count6(10) & ((\Add5~17\) # (GND)))
-- \Add5~19\ = CARRY((!\Add5~17\) # (!count6(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count6(10),
	datad => VCC,
	cin => \Add5~17\,
	combout => \Add5~18_combout\,
	cout => \Add5~19\);

-- Location: LCCOMB_X7_Y10_N6
\count6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count6~2_combout\ = (!\Equal5~9_combout\ & \Add5~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~9_combout\,
	datac => \Add5~18_combout\,
	combout => \count6~2_combout\);

-- Location: FF_X7_Y10_N7
\count6[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count6(10));

-- Location: LCCOMB_X8_Y10_N22
\Add5~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~20_combout\ = (count6(11) & (\Add5~19\ $ (GND))) # (!count6(11) & (!\Add5~19\ & VCC))
-- \Add5~21\ = CARRY((count6(11) & !\Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count6(11),
	datad => VCC,
	cin => \Add5~19\,
	combout => \Add5~20_combout\,
	cout => \Add5~21\);

-- Location: FF_X8_Y10_N23
\count6[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count6(11));

-- Location: LCCOMB_X8_Y10_N24
\Add5~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~22_combout\ = (count6(12) & (!\Add5~21\)) # (!count6(12) & ((\Add5~21\) # (GND)))
-- \Add5~23\ = CARRY((!\Add5~21\) # (!count6(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count6(12),
	datad => VCC,
	cin => \Add5~21\,
	combout => \Add5~22_combout\,
	cout => \Add5~23\);

-- Location: LCCOMB_X7_Y10_N18
\count6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count6~3_combout\ = (!\Equal5~9_combout\ & \Add5~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal5~9_combout\,
	datad => \Add5~22_combout\,
	combout => \count6~3_combout\);

-- Location: FF_X7_Y10_N19
\count6[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count6(12));

-- Location: LCCOMB_X8_Y10_N26
\Add5~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~24_combout\ = (count6(13) & (\Add5~23\ $ (GND))) # (!count6(13) & (!\Add5~23\ & VCC))
-- \Add5~25\ = CARRY((count6(13) & !\Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count6(13),
	datad => VCC,
	cin => \Add5~23\,
	combout => \Add5~24_combout\,
	cout => \Add5~25\);

-- Location: LCCOMB_X7_Y10_N0
\count6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count6~4_combout\ = (!\Equal5~9_combout\ & \Add5~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal5~9_combout\,
	datad => \Add5~24_combout\,
	combout => \count6~4_combout\);

-- Location: FF_X7_Y10_N1
\count6[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count6(13));

-- Location: LCCOMB_X8_Y10_N28
\Add5~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~26_combout\ = (count6(14) & (!\Add5~25\)) # (!count6(14) & ((\Add5~25\) # (GND)))
-- \Add5~27\ = CARRY((!\Add5~25\) # (!count6(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count6(14),
	datad => VCC,
	cin => \Add5~25\,
	combout => \Add5~26_combout\,
	cout => \Add5~27\);

-- Location: LCCOMB_X7_Y10_N10
\count6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count6~5_combout\ = (!\Equal5~9_combout\ & \Add5~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal5~9_combout\,
	datad => \Add5~26_combout\,
	combout => \count6~5_combout\);

-- Location: FF_X7_Y10_N11
\count6[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count6~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count6(14));

-- Location: LCCOMB_X8_Y10_N30
\Add5~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~28_combout\ = (count6(15) & (\Add5~27\ $ (GND))) # (!count6(15) & (!\Add5~27\ & VCC))
-- \Add5~29\ = CARRY((count6(15) & !\Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count6(15),
	datad => VCC,
	cin => \Add5~27\,
	combout => \Add5~28_combout\,
	cout => \Add5~29\);

-- Location: LCCOMB_X7_Y10_N12
\count6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count6~6_combout\ = (!\Equal5~9_combout\ & \Add5~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~9_combout\,
	datac => \Add5~28_combout\,
	combout => \count6~6_combout\);

-- Location: FF_X7_Y10_N13
\count6[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count6(15));

-- Location: LCCOMB_X7_Y10_N26
\Equal5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~3_combout\ = (count6(14) & (count6(13) & (count6(15) & count6(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count6(14),
	datab => count6(13),
	datac => count6(15),
	datad => count6(12),
	combout => \Equal5~3_combout\);

-- Location: LCCOMB_X7_Y10_N24
\Equal5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = (count6(10) & (!count6(9) & (!count6(11) & !count6(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count6(10),
	datab => count6(9),
	datac => count6(11),
	datad => count6(8),
	combout => \Equal5~2_combout\);

-- Location: LCCOMB_X7_Y10_N22
\Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!count6(7) & (count6(5) & (!count6(4) & !count6(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count6(7),
	datab => count6(5),
	datac => count6(4),
	datad => count6(6),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X7_Y10_N8
\Equal5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (!count6(3) & (count6(2) & (\Equal5~0_combout\ & \Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count6(3),
	datab => count6(2),
	datac => \Equal5~0_combout\,
	datad => \Equal6~0_combout\,
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X8_Y9_N0
\Add5~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~30_combout\ = (count6(16) & (!\Add5~29\)) # (!count6(16) & ((\Add5~29\) # (GND)))
-- \Add5~31\ = CARRY((!\Add5~29\) # (!count6(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count6(16),
	datad => VCC,
	cin => \Add5~29\,
	combout => \Add5~30_combout\,
	cout => \Add5~31\);

-- Location: FF_X8_Y9_N1
\count6[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count6(16));

-- Location: LCCOMB_X8_Y9_N2
\Add5~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~32_combout\ = (count6(17) & (\Add5~31\ $ (GND))) # (!count6(17) & (!\Add5~31\ & VCC))
-- \Add5~33\ = CARRY((count6(17) & !\Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count6(17),
	datad => VCC,
	cin => \Add5~31\,
	combout => \Add5~32_combout\,
	cout => \Add5~33\);

-- Location: FF_X8_Y9_N3
\count6[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count6(17));

-- Location: LCCOMB_X8_Y9_N4
\Add5~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~34_combout\ = (count6(18) & (!\Add5~33\)) # (!count6(18) & ((\Add5~33\) # (GND)))
-- \Add5~35\ = CARRY((!\Add5~33\) # (!count6(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count6(18),
	datad => VCC,
	cin => \Add5~33\,
	combout => \Add5~34_combout\,
	cout => \Add5~35\);

-- Location: FF_X8_Y9_N5
\count6[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count6(18));

-- Location: LCCOMB_X8_Y9_N6
\Add5~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~36_combout\ = (count6(19) & (\Add5~35\ $ (GND))) # (!count6(19) & (!\Add5~35\ & VCC))
-- \Add5~37\ = CARRY((count6(19) & !\Add5~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count6(19),
	datad => VCC,
	cin => \Add5~35\,
	combout => \Add5~36_combout\,
	cout => \Add5~37\);

-- Location: FF_X8_Y9_N7
\count6[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count6(19));

-- Location: LCCOMB_X8_Y9_N8
\Add5~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~38_combout\ = (count6(20) & (!\Add5~37\)) # (!count6(20) & ((\Add5~37\) # (GND)))
-- \Add5~39\ = CARRY((!\Add5~37\) # (!count6(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count6(20),
	datad => VCC,
	cin => \Add5~37\,
	combout => \Add5~38_combout\,
	cout => \Add5~39\);

-- Location: FF_X8_Y9_N9
\count6[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count6(20));

-- Location: LCCOMB_X8_Y9_N10
\Add5~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~40_combout\ = (count6(21) & (\Add5~39\ $ (GND))) # (!count6(21) & (!\Add5~39\ & VCC))
-- \Add5~41\ = CARRY((count6(21) & !\Add5~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count6(21),
	datad => VCC,
	cin => \Add5~39\,
	combout => \Add5~40_combout\,
	cout => \Add5~41\);

-- Location: FF_X8_Y9_N11
\count6[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count6(21));

-- Location: LCCOMB_X8_Y9_N12
\Add5~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~42_combout\ = (count6(22) & (!\Add5~41\)) # (!count6(22) & ((\Add5~41\) # (GND)))
-- \Add5~43\ = CARRY((!\Add5~41\) # (!count6(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count6(22),
	datad => VCC,
	cin => \Add5~41\,
	combout => \Add5~42_combout\,
	cout => \Add5~43\);

-- Location: FF_X8_Y9_N13
\count6[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count6(22));

-- Location: LCCOMB_X8_Y9_N14
\Add5~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~44_combout\ = (count6(23) & (\Add5~43\ $ (GND))) # (!count6(23) & (!\Add5~43\ & VCC))
-- \Add5~45\ = CARRY((count6(23) & !\Add5~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count6(23),
	datad => VCC,
	cin => \Add5~43\,
	combout => \Add5~44_combout\,
	cout => \Add5~45\);

-- Location: FF_X8_Y9_N15
\count6[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count6(23));

-- Location: LCCOMB_X7_Y9_N10
\Equal5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~5_combout\ = (!count6(22) & (!count6(23) & (!count6(20) & !count6(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count6(22),
	datab => count6(23),
	datac => count6(20),
	datad => count6(21),
	combout => \Equal5~5_combout\);

-- Location: LCCOMB_X8_Y9_N16
\Add5~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~46_combout\ = (count6(24) & (!\Add5~45\)) # (!count6(24) & ((\Add5~45\) # (GND)))
-- \Add5~47\ = CARRY((!\Add5~45\) # (!count6(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count6(24),
	datad => VCC,
	cin => \Add5~45\,
	combout => \Add5~46_combout\,
	cout => \Add5~47\);

-- Location: FF_X8_Y9_N17
\count6[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count6(24));

-- Location: LCCOMB_X8_Y9_N18
\Add5~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~48_combout\ = (count6(25) & (\Add5~47\ $ (GND))) # (!count6(25) & (!\Add5~47\ & VCC))
-- \Add5~49\ = CARRY((count6(25) & !\Add5~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count6(25),
	datad => VCC,
	cin => \Add5~47\,
	combout => \Add5~48_combout\,
	cout => \Add5~49\);

-- Location: FF_X8_Y9_N19
\count6[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count6(25));

-- Location: LCCOMB_X8_Y9_N20
\Add5~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~50_combout\ = (count6(26) & (!\Add5~49\)) # (!count6(26) & ((\Add5~49\) # (GND)))
-- \Add5~51\ = CARRY((!\Add5~49\) # (!count6(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count6(26),
	datad => VCC,
	cin => \Add5~49\,
	combout => \Add5~50_combout\,
	cout => \Add5~51\);

-- Location: FF_X8_Y9_N21
\count6[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count6(26));

-- Location: LCCOMB_X8_Y9_N22
\Add5~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~52_combout\ = (count6(27) & (\Add5~51\ $ (GND))) # (!count6(27) & (!\Add5~51\ & VCC))
-- \Add5~53\ = CARRY((count6(27) & !\Add5~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count6(27),
	datad => VCC,
	cin => \Add5~51\,
	combout => \Add5~52_combout\,
	cout => \Add5~53\);

-- Location: FF_X8_Y9_N23
\count6[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count6(27));

-- Location: LCCOMB_X7_Y9_N8
\Equal5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~6_combout\ = (!count6(26) & (!count6(25) & (!count6(27) & !count6(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count6(26),
	datab => count6(25),
	datac => count6(27),
	datad => count6(24),
	combout => \Equal5~6_combout\);

-- Location: LCCOMB_X8_Y9_N24
\Add5~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~54_combout\ = (count6(28) & (!\Add5~53\)) # (!count6(28) & ((\Add5~53\) # (GND)))
-- \Add5~55\ = CARRY((!\Add5~53\) # (!count6(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count6(28),
	datad => VCC,
	cin => \Add5~53\,
	combout => \Add5~54_combout\,
	cout => \Add5~55\);

-- Location: FF_X8_Y9_N25
\count6[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count6(28));

-- Location: LCCOMB_X8_Y9_N26
\Add5~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~56_combout\ = (count6(29) & (\Add5~55\ $ (GND))) # (!count6(29) & (!\Add5~55\ & VCC))
-- \Add5~57\ = CARRY((count6(29) & !\Add5~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count6(29),
	datad => VCC,
	cin => \Add5~55\,
	combout => \Add5~56_combout\,
	cout => \Add5~57\);

-- Location: FF_X8_Y9_N27
\count6[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count6(29));

-- Location: LCCOMB_X8_Y9_N28
\Add5~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~58_combout\ = (count6(30) & (!\Add5~57\)) # (!count6(30) & ((\Add5~57\) # (GND)))
-- \Add5~59\ = CARRY((!\Add5~57\) # (!count6(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count6(30),
	datad => VCC,
	cin => \Add5~57\,
	combout => \Add5~58_combout\,
	cout => \Add5~59\);

-- Location: FF_X8_Y9_N29
\count6[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count6(30));

-- Location: LCCOMB_X8_Y9_N30
\Add5~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~60_combout\ = count6(31) $ (!\Add5~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count6(31),
	cin => \Add5~59\,
	combout => \Add5~60_combout\);

-- Location: FF_X8_Y9_N31
\count6[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count6(31));

-- Location: LCCOMB_X7_Y9_N30
\Equal5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~7_combout\ = (!count6(31) & (!count6(30) & (!count6(29) & !count6(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count6(31),
	datab => count6(30),
	datac => count6(29),
	datad => count6(28),
	combout => \Equal5~7_combout\);

-- Location: LCCOMB_X7_Y9_N28
\Equal5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~4_combout\ = (!count6(18) & (!count6(16) & (!count6(19) & !count6(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count6(18),
	datab => count6(16),
	datac => count6(19),
	datad => count6(17),
	combout => \Equal5~4_combout\);

-- Location: LCCOMB_X7_Y9_N0
\Equal5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~8_combout\ = (\Equal5~5_combout\ & (\Equal5~6_combout\ & (\Equal5~7_combout\ & \Equal5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~5_combout\,
	datab => \Equal5~6_combout\,
	datac => \Equal5~7_combout\,
	datad => \Equal5~4_combout\,
	combout => \Equal5~8_combout\);

-- Location: LCCOMB_X7_Y10_N4
\Equal5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~9_combout\ = (\Equal5~3_combout\ & (\Equal5~2_combout\ & (\Equal5~1_combout\ & \Equal5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~3_combout\,
	datab => \Equal5~2_combout\,
	datac => \Equal5~1_combout\,
	datad => \Equal5~8_combout\,
	combout => \Equal5~9_combout\);

-- Location: LCCOMB_X6_Y6_N28
\outp6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outp6~0_combout\ = \outp6~q\ $ (\Equal5~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \outp6~q\,
	datad => \Equal5~9_combout\,
	combout => \outp6~0_combout\);

-- Location: FF_X6_Y6_N29
outp6 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \outp6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outp6~q\);

-- Location: LCCOMB_X6_Y6_N8
\spkr_outp~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spkr_outp~7_combout\ = (\sw[6]~input_o\ & (\outp7~q\)) # (!\sw[6]~input_o\ & ((\outp6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[6]~input_o\,
	datac => \outp7~q\,
	datad => \outp6~q\,
	combout => \spkr_outp~7_combout\);

-- Location: LCCOMB_X7_Y3_N20
\spkr_outp~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spkr_outp~8_combout\ = (\sw[7]~input_o\ & (\spkr_outp~6_combout\ & (!\sw[6]~input_o\))) # (!\sw[7]~input_o\ & (((\spkr_outp~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spkr_outp~6_combout\,
	datab => \sw[6]~input_o\,
	datac => \sw[7]~input_o\,
	datad => \spkr_outp~7_combout\,
	combout => \spkr_outp~8_combout\);

-- Location: LCCOMB_X6_Y3_N20
\Equal8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (\Equal12~0_combout\ & (\sw[5]~input_o\ & \sw[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal12~0_combout\,
	datac => \sw[5]~input_o\,
	datad => \sw[4]~input_o\,
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X6_Y3_N30
\Equal8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal8~1_combout\ = (\sw[7]~input_o\ & (\sw[6]~input_o\ & (\Equal8~0_combout\ & \sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[7]~input_o\,
	datab => \sw[6]~input_o\,
	datac => \Equal8~0_combout\,
	datad => \sw[0]~input_o\,
	combout => \Equal8~1_combout\);

-- Location: LCCOMB_X16_Y9_N0
\Add7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = count8(0) $ (GND)
-- \Add7~1\ = CARRY(!count8(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count8(0),
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X17_Y9_N30
\count8~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count8~9_combout\ = (!\Add7~0_combout\ & !\Equal7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~0_combout\,
	datad => \Equal7~10_combout\,
	combout => \count8~9_combout\);

-- Location: FF_X17_Y9_N31
\count8[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count8~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count8(0));

-- Location: LCCOMB_X16_Y9_N2
\Add7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (count8(1) & (!\Add7~1\)) # (!count8(1) & ((\Add7~1\) # (GND)))
-- \Add7~3\ = CARRY((!\Add7~1\) # (!count8(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count8(1),
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: FF_X16_Y9_N3
\count8[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count8(1));

-- Location: LCCOMB_X16_Y9_N4
\Add7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (count8(2) & (\Add7~3\ $ (GND))) # (!count8(2) & (!\Add7~3\ & VCC))
-- \Add7~5\ = CARRY((count8(2) & !\Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count8(2),
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X17_Y9_N6
\count8~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count8~8_combout\ = (\Add7~4_combout\ & !\Equal7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~4_combout\,
	datad => \Equal7~10_combout\,
	combout => \count8~8_combout\);

-- Location: FF_X17_Y9_N7
\count8[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count8~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count8(2));

-- Location: LCCOMB_X16_Y9_N6
\Add7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (count8(3) & (!\Add7~5\)) # (!count8(3) & ((\Add7~5\) # (GND)))
-- \Add7~7\ = CARRY((!\Add7~5\) # (!count8(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count8(3),
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: FF_X16_Y9_N7
\count8[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count8(3));

-- Location: LCCOMB_X16_Y9_N8
\Add7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = (count8(4) & (\Add7~7\ $ (GND))) # (!count8(4) & (!\Add7~7\ & VCC))
-- \Add7~9\ = CARRY((count8(4) & !\Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count8(4),
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X17_Y9_N22
\count8~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count8~7_combout\ = (\Add7~8_combout\ & !\Equal7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~8_combout\,
	datad => \Equal7~10_combout\,
	combout => \count8~7_combout\);

-- Location: FF_X17_Y9_N23
\count8[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count8~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count8(4));

-- Location: LCCOMB_X16_Y9_N10
\Add7~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (count8(5) & (!\Add7~9\)) # (!count8(5) & ((\Add7~9\) # (GND)))
-- \Add7~11\ = CARRY((!\Add7~9\) # (!count8(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count8(5),
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: LCCOMB_X17_Y9_N2
\count8~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count8~6_combout\ = (\Add7~10_combout\ & !\Equal7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~10_combout\,
	datad => \Equal7~10_combout\,
	combout => \count8~6_combout\);

-- Location: FF_X17_Y9_N3
\count8[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count8~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count8(5));

-- Location: LCCOMB_X16_Y9_N12
\Add7~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = (count8(6) & (\Add7~11\ $ (GND))) # (!count8(6) & (!\Add7~11\ & VCC))
-- \Add7~13\ = CARRY((count8(6) & !\Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count8(6),
	datad => VCC,
	cin => \Add7~11\,
	combout => \Add7~12_combout\,
	cout => \Add7~13\);

-- Location: LCCOMB_X17_Y9_N28
\count8~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count8~5_combout\ = (\Add7~12_combout\ & !\Equal7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~12_combout\,
	datad => \Equal7~10_combout\,
	combout => \count8~5_combout\);

-- Location: FF_X17_Y9_N29
\count8[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count8~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count8(6));

-- Location: LCCOMB_X16_Y9_N14
\Add7~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~14_combout\ = (count8(7) & (!\Add7~13\)) # (!count8(7) & ((\Add7~13\) # (GND)))
-- \Add7~15\ = CARRY((!\Add7~13\) # (!count8(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count8(7),
	datad => VCC,
	cin => \Add7~13\,
	combout => \Add7~14_combout\,
	cout => \Add7~15\);

-- Location: FF_X16_Y9_N15
\count8[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count8(7));

-- Location: LCCOMB_X16_Y9_N16
\Add7~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~16_combout\ = (count8(8) & (\Add7~15\ $ (GND))) # (!count8(8) & (!\Add7~15\ & VCC))
-- \Add7~17\ = CARRY((count8(8) & !\Add7~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count8(8),
	datad => VCC,
	cin => \Add7~15\,
	combout => \Add7~16_combout\,
	cout => \Add7~17\);

-- Location: LCCOMB_X17_Y9_N18
\count8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count8~4_combout\ = (\Add7~16_combout\ & !\Equal7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~16_combout\,
	datad => \Equal7~10_combout\,
	combout => \count8~4_combout\);

-- Location: FF_X17_Y9_N19
\count8[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count8~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count8(8));

-- Location: LCCOMB_X17_Y9_N8
\Equal7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~6_combout\ = (!count8(7) & (count8(8) & (count8(6) & count8(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count8(7),
	datab => count8(8),
	datac => count8(6),
	datad => count8(5),
	combout => \Equal7~6_combout\);

-- Location: LCCOMB_X16_Y9_N18
\Add7~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~18_combout\ = (count8(9) & (!\Add7~17\)) # (!count8(9) & ((\Add7~17\) # (GND)))
-- \Add7~19\ = CARRY((!\Add7~17\) # (!count8(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count8(9),
	datad => VCC,
	cin => \Add7~17\,
	combout => \Add7~18_combout\,
	cout => \Add7~19\);

-- Location: LCCOMB_X17_Y9_N26
\count8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count8~3_combout\ = (!\Equal7~10_combout\ & \Add7~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~10_combout\,
	datad => \Add7~18_combout\,
	combout => \count8~3_combout\);

-- Location: FF_X17_Y9_N27
\count8[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count8(9));

-- Location: LCCOMB_X16_Y9_N20
\Add7~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~20_combout\ = (count8(10) & (\Add7~19\ $ (GND))) # (!count8(10) & (!\Add7~19\ & VCC))
-- \Add7~21\ = CARRY((count8(10) & !\Add7~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count8(10),
	datad => VCC,
	cin => \Add7~19\,
	combout => \Add7~20_combout\,
	cout => \Add7~21\);

-- Location: FF_X16_Y9_N21
\count8[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count8(10));

-- Location: LCCOMB_X16_Y9_N22
\Add7~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~22_combout\ = (count8(11) & (!\Add7~21\)) # (!count8(11) & ((\Add7~21\) # (GND)))
-- \Add7~23\ = CARRY((!\Add7~21\) # (!count8(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count8(11),
	datad => VCC,
	cin => \Add7~21\,
	combout => \Add7~22_combout\,
	cout => \Add7~23\);

-- Location: LCCOMB_X17_Y9_N12
\count8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count8~2_combout\ = (\Add7~22_combout\ & !\Equal7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~22_combout\,
	datad => \Equal7~10_combout\,
	combout => \count8~2_combout\);

-- Location: FF_X17_Y9_N13
\count8[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count8(11));

-- Location: LCCOMB_X16_Y9_N24
\Add7~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~24_combout\ = (count8(12) & (\Add7~23\ $ (GND))) # (!count8(12) & (!\Add7~23\ & VCC))
-- \Add7~25\ = CARRY((count8(12) & !\Add7~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count8(12),
	datad => VCC,
	cin => \Add7~23\,
	combout => \Add7~24_combout\,
	cout => \Add7~25\);

-- Location: FF_X16_Y9_N25
\count8[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count8(12));

-- Location: LCCOMB_X17_Y9_N24
\Equal7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~5_combout\ = (count8(11) & (!count8(10) & (count8(9) & !count8(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count8(11),
	datab => count8(10),
	datac => count8(9),
	datad => count8(12),
	combout => \Equal7~5_combout\);

-- Location: LCCOMB_X17_Y9_N16
\Equal7~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~7_combout\ = (count8(4) & !count8(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count8(4),
	datac => count8(3),
	combout => \Equal7~7_combout\);

-- Location: LCCOMB_X16_Y9_N26
\Add7~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~26_combout\ = (count8(13) & (!\Add7~25\)) # (!count8(13) & ((\Add7~25\) # (GND)))
-- \Add7~27\ = CARRY((!\Add7~25\) # (!count8(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count8(13),
	datad => VCC,
	cin => \Add7~25\,
	combout => \Add7~26_combout\,
	cout => \Add7~27\);

-- Location: FF_X16_Y9_N27
\count8[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count8(13));

-- Location: LCCOMB_X16_Y9_N28
\Add7~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~28_combout\ = (count8(14) & (\Add7~27\ $ (GND))) # (!count8(14) & (!\Add7~27\ & VCC))
-- \Add7~29\ = CARRY((count8(14) & !\Add7~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count8(14),
	datad => VCC,
	cin => \Add7~27\,
	combout => \Add7~28_combout\,
	cout => \Add7~29\);

-- Location: LCCOMB_X15_Y9_N6
\count8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count8~1_combout\ = (!\Equal7~10_combout\ & \Add7~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal7~10_combout\,
	datad => \Add7~28_combout\,
	combout => \count8~1_combout\);

-- Location: FF_X15_Y9_N7
\count8[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count8(14));

-- Location: LCCOMB_X16_Y9_N30
\Add7~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~30_combout\ = (count8(15) & (!\Add7~29\)) # (!count8(15) & ((\Add7~29\) # (GND)))
-- \Add7~31\ = CARRY((!\Add7~29\) # (!count8(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count8(15),
	datad => VCC,
	cin => \Add7~29\,
	combout => \Add7~30_combout\,
	cout => \Add7~31\);

-- Location: LCCOMB_X15_Y9_N16
\count8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count8~0_combout\ = (\Add7~30_combout\ & !\Equal7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~30_combout\,
	datad => \Equal7~10_combout\,
	combout => \count8~0_combout\);

-- Location: FF_X15_Y9_N17
\count8[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count8(15));

-- Location: LCCOMB_X16_Y8_N0
\Add7~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~32_combout\ = (count8(16) & (\Add7~31\ $ (GND))) # (!count8(16) & (!\Add7~31\ & VCC))
-- \Add7~33\ = CARRY((count8(16) & !\Add7~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count8(16),
	datad => VCC,
	cin => \Add7~31\,
	combout => \Add7~32_combout\,
	cout => \Add7~33\);

-- Location: FF_X16_Y8_N1
\count8[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count8(16));

-- Location: LCCOMB_X16_Y8_N2
\Add7~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~34_combout\ = (count8(17) & (!\Add7~33\)) # (!count8(17) & ((\Add7~33\) # (GND)))
-- \Add7~35\ = CARRY((!\Add7~33\) # (!count8(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count8(17),
	datad => VCC,
	cin => \Add7~33\,
	combout => \Add7~34_combout\,
	cout => \Add7~35\);

-- Location: FF_X16_Y8_N3
\count8[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count8(17));

-- Location: LCCOMB_X16_Y8_N4
\Add7~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~36_combout\ = (count8(18) & (\Add7~35\ $ (GND))) # (!count8(18) & (!\Add7~35\ & VCC))
-- \Add7~37\ = CARRY((count8(18) & !\Add7~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count8(18),
	datad => VCC,
	cin => \Add7~35\,
	combout => \Add7~36_combout\,
	cout => \Add7~37\);

-- Location: FF_X16_Y8_N5
\count8[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count8(18));

-- Location: LCCOMB_X16_Y8_N6
\Add7~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~38_combout\ = (count8(19) & (!\Add7~37\)) # (!count8(19) & ((\Add7~37\) # (GND)))
-- \Add7~39\ = CARRY((!\Add7~37\) # (!count8(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count8(19),
	datad => VCC,
	cin => \Add7~37\,
	combout => \Add7~38_combout\,
	cout => \Add7~39\);

-- Location: FF_X16_Y8_N7
\count8[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count8(19));

-- Location: LCCOMB_X16_Y8_N8
\Add7~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~40_combout\ = (count8(20) & (\Add7~39\ $ (GND))) # (!count8(20) & (!\Add7~39\ & VCC))
-- \Add7~41\ = CARRY((count8(20) & !\Add7~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count8(20),
	datad => VCC,
	cin => \Add7~39\,
	combout => \Add7~40_combout\,
	cout => \Add7~41\);

-- Location: FF_X16_Y8_N9
\count8[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count8(20));

-- Location: LCCOMB_X16_Y8_N10
\Add7~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~42_combout\ = (count8(21) & (!\Add7~41\)) # (!count8(21) & ((\Add7~41\) # (GND)))
-- \Add7~43\ = CARRY((!\Add7~41\) # (!count8(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count8(21),
	datad => VCC,
	cin => \Add7~41\,
	combout => \Add7~42_combout\,
	cout => \Add7~43\);

-- Location: FF_X16_Y8_N11
\count8[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count8(21));

-- Location: LCCOMB_X16_Y8_N12
\Add7~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~44_combout\ = (count8(22) & (\Add7~43\ $ (GND))) # (!count8(22) & (!\Add7~43\ & VCC))
-- \Add7~45\ = CARRY((count8(22) & !\Add7~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count8(22),
	datad => VCC,
	cin => \Add7~43\,
	combout => \Add7~44_combout\,
	cout => \Add7~45\);

-- Location: FF_X16_Y8_N13
\count8[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count8(22));

-- Location: LCCOMB_X16_Y8_N14
\Add7~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~46_combout\ = (count8(23) & (!\Add7~45\)) # (!count8(23) & ((\Add7~45\) # (GND)))
-- \Add7~47\ = CARRY((!\Add7~45\) # (!count8(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count8(23),
	datad => VCC,
	cin => \Add7~45\,
	combout => \Add7~46_combout\,
	cout => \Add7~47\);

-- Location: FF_X16_Y8_N15
\count8[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count8(23));

-- Location: LCCOMB_X16_Y8_N16
\Add7~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~48_combout\ = (count8(24) & (\Add7~47\ $ (GND))) # (!count8(24) & (!\Add7~47\ & VCC))
-- \Add7~49\ = CARRY((count8(24) & !\Add7~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count8(24),
	datad => VCC,
	cin => \Add7~47\,
	combout => \Add7~48_combout\,
	cout => \Add7~49\);

-- Location: FF_X16_Y8_N17
\count8[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count8(24));

-- Location: LCCOMB_X16_Y8_N18
\Add7~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~50_combout\ = (count8(25) & (!\Add7~49\)) # (!count8(25) & ((\Add7~49\) # (GND)))
-- \Add7~51\ = CARRY((!\Add7~49\) # (!count8(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count8(25),
	datad => VCC,
	cin => \Add7~49\,
	combout => \Add7~50_combout\,
	cout => \Add7~51\);

-- Location: FF_X16_Y8_N19
\count8[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count8(25));

-- Location: LCCOMB_X16_Y8_N20
\Add7~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~52_combout\ = (count8(26) & (\Add7~51\ $ (GND))) # (!count8(26) & (!\Add7~51\ & VCC))
-- \Add7~53\ = CARRY((count8(26) & !\Add7~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count8(26),
	datad => VCC,
	cin => \Add7~51\,
	combout => \Add7~52_combout\,
	cout => \Add7~53\);

-- Location: FF_X16_Y8_N21
\count8[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count8(26));

-- Location: LCCOMB_X16_Y8_N22
\Add7~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~54_combout\ = (count8(27) & (!\Add7~53\)) # (!count8(27) & ((\Add7~53\) # (GND)))
-- \Add7~55\ = CARRY((!\Add7~53\) # (!count8(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count8(27),
	datad => VCC,
	cin => \Add7~53\,
	combout => \Add7~54_combout\,
	cout => \Add7~55\);

-- Location: FF_X16_Y8_N23
\count8[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count8(27));

-- Location: LCCOMB_X16_Y8_N24
\Add7~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~56_combout\ = (count8(28) & (\Add7~55\ $ (GND))) # (!count8(28) & (!\Add7~55\ & VCC))
-- \Add7~57\ = CARRY((count8(28) & !\Add7~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count8(28),
	datad => VCC,
	cin => \Add7~55\,
	combout => \Add7~56_combout\,
	cout => \Add7~57\);

-- Location: FF_X16_Y8_N25
\count8[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count8(28));

-- Location: LCCOMB_X16_Y8_N26
\Add7~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~58_combout\ = (count8(29) & (!\Add7~57\)) # (!count8(29) & ((\Add7~57\) # (GND)))
-- \Add7~59\ = CARRY((!\Add7~57\) # (!count8(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count8(29),
	datad => VCC,
	cin => \Add7~57\,
	combout => \Add7~58_combout\,
	cout => \Add7~59\);

-- Location: FF_X16_Y8_N27
\count8[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count8(29));

-- Location: LCCOMB_X16_Y8_N28
\Add7~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~60_combout\ = (count8(30) & (\Add7~59\ $ (GND))) # (!count8(30) & (!\Add7~59\ & VCC))
-- \Add7~61\ = CARRY((count8(30) & !\Add7~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count8(30),
	datad => VCC,
	cin => \Add7~59\,
	combout => \Add7~60_combout\,
	cout => \Add7~61\);

-- Location: FF_X16_Y8_N29
\count8[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count8(30));

-- Location: LCCOMB_X16_Y8_N30
\Add7~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~62_combout\ = count8(31) $ (\Add7~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count8(31),
	cin => \Add7~61\,
	combout => \Add7~62_combout\);

-- Location: FF_X16_Y8_N31
\count8[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count8(31));

-- Location: LCCOMB_X17_Y9_N20
\Equal7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~8_combout\ = (!count8(2) & (!count8(31) & (!count8(30) & !count8(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count8(2),
	datab => count8(31),
	datac => count8(30),
	datad => count8(29),
	combout => \Equal7~8_combout\);

-- Location: LCCOMB_X17_Y9_N4
\Equal7~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~9_combout\ = (count8(1) & (\Equal7~7_combout\ & (!count8(0) & \Equal7~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count8(1),
	datab => \Equal7~7_combout\,
	datac => count8(0),
	datad => \Equal7~8_combout\,
	combout => \Equal7~9_combout\);

-- Location: LCCOMB_X15_Y9_N12
\Equal7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~3_combout\ = (count8(14) & (count8(15) & (!count8(16) & !count8(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count8(14),
	datab => count8(15),
	datac => count8(16),
	datad => count8(13),
	combout => \Equal7~3_combout\);

-- Location: LCCOMB_X15_Y8_N0
\Equal7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (!count8(27) & (!count8(28) & (!count8(26) & !count8(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count8(27),
	datab => count8(28),
	datac => count8(26),
	datad => count8(25),
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X15_Y9_N30
\Equal7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~2_combout\ = (!count8(18) & (!count8(19) & (!count8(20) & !count8(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count8(18),
	datab => count8(19),
	datac => count8(20),
	datad => count8(17),
	combout => \Equal7~2_combout\);

-- Location: LCCOMB_X15_Y8_N2
\Equal7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (!count8(24) & (!count8(23) & (!count8(22) & !count8(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count8(24),
	datab => count8(23),
	datac => count8(22),
	datad => count8(21),
	combout => \Equal7~1_combout\);

-- Location: LCCOMB_X15_Y9_N14
\Equal7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~4_combout\ = (\Equal7~3_combout\ & (\Equal7~0_combout\ & (\Equal7~2_combout\ & \Equal7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~3_combout\,
	datab => \Equal7~0_combout\,
	datac => \Equal7~2_combout\,
	datad => \Equal7~1_combout\,
	combout => \Equal7~4_combout\);

-- Location: LCCOMB_X17_Y9_N10
\Equal7~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~10_combout\ = (\Equal7~6_combout\ & (\Equal7~5_combout\ & (\Equal7~9_combout\ & \Equal7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~6_combout\,
	datab => \Equal7~5_combout\,
	datac => \Equal7~9_combout\,
	datad => \Equal7~4_combout\,
	combout => \Equal7~10_combout\);

-- Location: LCCOMB_X15_Y9_N20
\outp8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outp8~0_combout\ = \outp8~q\ $ (\Equal7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \outp8~q\,
	datad => \Equal7~10_combout\,
	combout => \outp8~0_combout\);

-- Location: FF_X15_Y9_N21
outp8 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \outp8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outp8~q\);

-- Location: LCCOMB_X6_Y3_N2
\spkr_outp~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spkr_outp~2_combout\ = (\Equal8~1_combout\ & \outp8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal8~1_combout\,
	datad => \outp8~q\,
	combout => \spkr_outp~2_combout\);

-- Location: LCCOMB_X7_Y3_N0
\Equal10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (\Equal12~0_combout\ & (\sw[4]~input_o\ & (\sw[5]~input_o\ & \sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~0_combout\,
	datab => \sw[4]~input_o\,
	datac => \sw[5]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X7_Y3_N26
\spkr_outp~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spkr_outp~9_combout\ = (\spkr_outp~2_combout\) # ((\Equal10~0_combout\ & (\spkr_outp~8_combout\)) # (!\Equal10~0_combout\ & ((\spkr_outp~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spkr_outp~8_combout\,
	datab => \spkr_outp~6_combout\,
	datac => \spkr_outp~2_combout\,
	datad => \Equal10~0_combout\,
	combout => \spkr_outp~9_combout\);

-- Location: LCCOMB_X6_Y3_N22
\Equal15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal15~0_combout\ = (!\sw[3]~input_o\ & (!\sw[4]~input_o\ & (\Equal11~0_combout\ & \sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[4]~input_o\,
	datac => \Equal11~0_combout\,
	datad => \sw[0]~input_o\,
	combout => \Equal15~0_combout\);

-- Location: LCCOMB_X6_Y3_N28
\Equal15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal15~1_combout\ = (!\sw[2]~input_o\ & !\sw[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[2]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \Equal15~1_combout\);

-- Location: LCCOMB_X8_Y3_N12
\spkr_outp~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spkr_outp~10_combout\ = (\sw[7]~input_o\) # (!\Equal10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[7]~input_o\,
	datac => \Equal10~0_combout\,
	combout => \spkr_outp~10_combout\);

-- Location: LCCOMB_X7_Y3_N24
\spkr_outp~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spkr_outp~11_combout\ = (\spkr_outp~3_combout\ & (!\Equal11~1_combout\ & (\spkr_outp~10_combout\ & !\Equal14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spkr_outp~3_combout\,
	datab => \Equal11~1_combout\,
	datac => \spkr_outp~10_combout\,
	datad => \Equal14~1_combout\,
	combout => \spkr_outp~11_combout\);

-- Location: LCCOMB_X6_Y3_N12
\spkr_outp~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spkr_outp~12_combout\ = (\Equal8~1_combout\) # (((\Equal15~0_combout\ & \Equal15~1_combout\)) # (!\spkr_outp~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal15~0_combout\,
	datab => \Equal15~1_combout\,
	datac => \Equal8~1_combout\,
	datad => \spkr_outp~11_combout\,
	combout => \spkr_outp~12_combout\);

-- Location: LCCOMB_X7_Y3_N22
\spkr_outp$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spkr_outp$latch~combout\ = (\spkr_outp~12_combout\ & ((\spkr_outp~9_combout\))) # (!\spkr_outp~12_combout\ & (\spkr_outp$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spkr_outp$latch~combout\,
	datac => \spkr_outp~9_combout\,
	datad => \spkr_outp~12_combout\,
	combout => \spkr_outp$latch~combout\);

-- Location: LCCOMB_X6_Y3_N24
\comb~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = (!\Equal8~1_combout\ & (\spkr_outp~11_combout\ & (\Equal15~0_combout\ & \Equal15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datab => \spkr_outp~11_combout\,
	datac => \Equal15~0_combout\,
	datad => \Equal15~1_combout\,
	combout => \comb~5_combout\);

-- Location: LCCOMB_X6_Y3_N26
\comb~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = (\Equal8~1_combout\) # (!\spkr_outp~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal8~1_combout\,
	datad => \spkr_outp~11_combout\,
	combout => \comb~4_combout\);

-- Location: LCCOMB_X6_Y3_N18
\led_out[0]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_out[0]$latch~combout\ = (!\comb~4_combout\ & ((\comb~5_combout\) # (\led_out[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~5_combout\,
	datac => \comb~4_combout\,
	datad => \led_out[0]$latch~combout\,
	combout => \led_out[0]$latch~combout\);

-- Location: LCCOMB_X8_Y3_N20
\Equal10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~1_combout\ = (\Equal10~0_combout\ & (!\sw[7]~input_o\ & !\sw[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => \sw[7]~input_o\,
	datac => \sw[6]~input_o\,
	combout => \Equal10~1_combout\);

-- Location: LCCOMB_X8_Y3_N24
\Equal9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (\Equal10~0_combout\ & (!\sw[7]~input_o\ & \sw[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => \sw[7]~input_o\,
	datac => \sw[6]~input_o\,
	combout => \Equal9~0_combout\);

-- Location: LCCOMB_X8_Y3_N18
\led_out[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_out[1]~0_combout\ = (!\Equal11~1_combout\ & (!\Equal10~1_combout\ & (\spkr_outp~3_combout\ & !\Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~1_combout\,
	datab => \Equal10~1_combout\,
	datac => \spkr_outp~3_combout\,
	datad => \Equal9~0_combout\,
	combout => \led_out[1]~0_combout\);

-- Location: LCCOMB_X8_Y3_N10
\led_out[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_out[1]~1_combout\ = (\led_out[1]~0_combout\ & (!\Equal8~1_combout\ & \Equal14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \led_out[1]~0_combout\,
	datac => \Equal8~1_combout\,
	datad => \Equal14~1_combout\,
	combout => \led_out[1]~1_combout\);

-- Location: LCCOMB_X8_Y3_N26
\comb~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = (\spkr_outp~12_combout\ & (((\Equal8~1_combout\) # (!\led_out[1]~0_combout\)) # (!\Equal14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal14~1_combout\,
	datab => \spkr_outp~12_combout\,
	datac => \Equal8~1_combout\,
	datad => \led_out[1]~0_combout\,
	combout => \comb~6_combout\);

-- Location: LCCOMB_X8_Y3_N0
\led_out[1]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_out[1]$latch~combout\ = (!\comb~6_combout\ & ((\led_out[1]~1_combout\) # (\led_out[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_out[1]~1_combout\,
	datac => \comb~6_combout\,
	datad => \led_out[1]$latch~combout\,
	combout => \led_out[1]$latch~combout\);

-- Location: LCCOMB_X8_Y5_N28
\comb~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = (\spkr_outp~12_combout\ & !\Equal13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spkr_outp~12_combout\,
	datad => \Equal13~0_combout\,
	combout => \comb~7_combout\);

-- Location: LCCOMB_X8_Y5_N16
\led_out[2]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_out[2]$latch~combout\ = (!\comb~7_combout\ & ((\Equal13~0_combout\) # (\led_out[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~0_combout\,
	datab => \comb~7_combout\,
	datad => \led_out[2]$latch~combout\,
	combout => \led_out[2]$latch~combout\);

-- Location: LCCOMB_X8_Y5_N18
\comb~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~8_combout\ = (\spkr_outp~12_combout\ & !\Equal12~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spkr_outp~12_combout\,
	datad => \Equal12~1_combout\,
	combout => \comb~8_combout\);

-- Location: LCCOMB_X8_Y5_N6
\led_out[3]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_out[3]$latch~combout\ = (!\comb~8_combout\ & ((\Equal12~1_combout\) # (\led_out[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~1_combout\,
	datab => \comb~8_combout\,
	datad => \led_out[3]$latch~combout\,
	combout => \led_out[3]$latch~combout\);

-- Location: LCCOMB_X8_Y3_N6
\comb~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~9_combout\ = (\spkr_outp~12_combout\ & !\Equal11~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spkr_outp~12_combout\,
	datad => \Equal11~1_combout\,
	combout => \comb~9_combout\);

-- Location: LCCOMB_X8_Y3_N16
\led_out[4]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_out[4]$latch~combout\ = (!\comb~9_combout\ & ((\Equal11~1_combout\) # (\led_out[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~1_combout\,
	datac => \comb~9_combout\,
	datad => \led_out[4]$latch~combout\,
	combout => \led_out[4]$latch~combout\);

-- Location: LCCOMB_X8_Y3_N22
\comb~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~11_combout\ = (\spkr_outp~12_combout\ & (((\sw[6]~input_o\) # (\sw[7]~input_o\)) # (!\Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => \sw[6]~input_o\,
	datac => \spkr_outp~12_combout\,
	datad => \sw[7]~input_o\,
	combout => \comb~11_combout\);

-- Location: LCCOMB_X8_Y3_N28
\led_out[5]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_out[5]$latch~combout\ = (!\comb~11_combout\ & ((\Equal10~1_combout\) # (\led_out[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal10~1_combout\,
	datac => \comb~11_combout\,
	datad => \led_out[5]$latch~combout\,
	combout => \led_out[5]$latch~combout\);

-- Location: LCCOMB_X8_Y3_N30
\comb~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~12_combout\ = (\spkr_outp~12_combout\ & (((\sw[7]~input_o\) # (!\sw[6]~input_o\)) # (!\Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => \sw[6]~input_o\,
	datac => \spkr_outp~12_combout\,
	datad => \sw[7]~input_o\,
	combout => \comb~12_combout\);

-- Location: LCCOMB_X8_Y3_N2
\led_out[6]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_out[6]$latch~combout\ = (!\comb~12_combout\ & ((\Equal9~0_combout\) # (\led_out[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal9~0_combout\,
	datac => \comb~12_combout\,
	datad => \led_out[6]$latch~combout\,
	combout => \led_out[6]$latch~combout\);

-- Location: LCCOMB_X6_Y3_N4
\comb~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~10_combout\ = (!\Equal8~1_combout\ & (((\Equal15~0_combout\ & \Equal15~1_combout\)) # (!\spkr_outp~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datab => \spkr_outp~11_combout\,
	datac => \Equal15~0_combout\,
	datad => \Equal15~1_combout\,
	combout => \comb~10_combout\);

-- Location: LCCOMB_X6_Y3_N10
\led_out[7]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_out[7]$latch~combout\ = (!\comb~10_combout\ & ((\Equal8~1_combout\) # (\led_out[7]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datac => \comb~10_combout\,
	datad => \led_out[7]$latch~combout\,
	combout => \led_out[7]$latch~combout\);

-- Location: UNVM_X0_Y22_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X25_Y34_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X25_Y33_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_spkr_outp <= \spkr_outp~output_o\;

ww_led_out(0) <= \led_out[0]~output_o\;

ww_led_out(1) <= \led_out[1]~output_o\;

ww_led_out(2) <= \led_out[2]~output_o\;

ww_led_out(3) <= \led_out[3]~output_o\;

ww_led_out(4) <= \led_out[4]~output_o\;

ww_led_out(5) <= \led_out[5]~output_o\;

ww_led_out(6) <= \led_out[6]~output_o\;

ww_led_out(7) <= \led_out[7]~output_o\;
END structure;


