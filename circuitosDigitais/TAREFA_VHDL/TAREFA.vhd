------------------------------------------------------------
-- Deeds (Digital Electronics Education and Design Suite)
-- VHDL Code generated on (9/24/2025, 7:01:33 PM)
--      by Deeds (Digital Circuit Simulator)(Deeds-DcS)
--      Ver. 3.01.250 (Feb 28, 2025)
-- Copyright (c) 2002-2025 University of Genoa, Italy
--      Web Site:  https://www.digitalelectronicsdeeds.com
------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.all;


ENTITY TAREFA IS
  PORT( 
    --------------------------------------> Inputs:
    i4:           IN  std_logic;
    i5:           IN  std_logic;
    i6:           IN  std_logic;
    i7:           IN  std_logic;
    i8:           IN  std_logic;
    i9:           IN  std_logic;
    i1:           IN  std_logic;
    i2:           IN  std_logic;
    i3:           IN  std_logic;
    --------------------------------------> Outputs:
    oID0003:      OUT std_logic_vector( 7 downto 0 ) 
    ------------------------------------------------------
    );
END TAREFA;


ARCHITECTURE structural OF TAREFA IS 

  ----------------------------------------> Components:
  COMPONENT NOT_gate IS
    PORT( I: IN std_logic;
          O: OUT std_logic );
  END COMPONENT;
  --
  COMPONENT AND2_gate IS
    PORT( I0,I1: IN std_logic;
          O: OUT std_logic );
  END COMPONENT;
  --
  COMPONENT AND3_gate IS
    PORT( I0,I1,I2: IN std_logic;
          O: OUT std_logic );
  END COMPONENT;
  --
  COMPONENT OR2_gate IS
    PORT( I0,I1: IN std_logic;
          O: OUT std_logic );
  END COMPONENT;
  --
  COMPONENT OR3_gate IS
    PORT( I0,I1,I2: IN std_logic;
          O: OUT std_logic );
  END COMPONENT;
  --
  COMPONENT OR4_gate IS
    PORT( I0,I1,I2,I3: IN std_logic;
          O: OUT std_logic );
  END COMPONENT;
  --
  COMPONENT OR5_gate IS
    PORT( I0,I1,I2,I3,I4: IN std_logic;
          O: OUT std_logic );
  END COMPONENT;
  --
  COMPONENT NOR2_gate IS
    PORT( I0,I1: IN std_logic;
          O: OUT std_logic );
  END COMPONENT;
  --
  COMPONENT NOR3_gate IS
    PORT( I0,I1,I2: IN std_logic;
          O: OUT std_logic );
  END COMPONENT;
  --
  COMPONENT NOR4_gate IS
    PORT( I0,I1,I2,I3: IN std_logic;
          O: OUT std_logic );
  END COMPONENT;

  ----------------------------------------> Signals:
  SIGNAL S001: std_logic;
  SIGNAL S002: std_logic;
  SIGNAL S003: std_logic;
  SIGNAL S004: std_logic;
  SIGNAL S005: std_logic;
  SIGNAL S006: std_logic;
  SIGNAL S007: std_logic;
  SIGNAL S008: std_logic;
  SIGNAL S009: std_logic;
  SIGNAL S010: std_logic;
  SIGNAL S011: std_logic;
  SIGNAL S012: std_logic;
  SIGNAL S013: std_logic;
  SIGNAL S014: std_logic;
  SIGNAL S015: std_logic;
  SIGNAL S016: std_logic;
  SIGNAL S017: std_logic;
  SIGNAL S018: std_logic;
  SIGNAL S019: std_logic;
  SIGNAL S020: std_logic;
  SIGNAL S021: std_logic;
  SIGNAL S022: std_logic;
  SIGNAL S023: std_logic;
  SIGNAL S024: std_logic;
  SIGNAL S025: std_logic;
  SIGNAL S026: std_logic;
  SIGNAL S027: std_logic;
  SIGNAL S028: std_logic;
  SIGNAL S029: std_logic;
  SIGNAL S030: std_logic;
  SIGNAL S031: std_logic;
  SIGNAL S032: std_logic;
  SIGNAL S033: std_logic;
  SIGNAL S034: std_logic;
  SIGNAL S035: std_logic;
  SIGNAL S036: std_logic;
  SIGNAL S037: std_logic;
  SIGNAL S038: std_logic;
  SIGNAL S039: std_logic;
  SIGNAL S040: std_logic;
  SIGNAL S041: std_logic;
  SIGNAL S042: std_logic;
  SIGNAL S043: std_logic;
  SIGNAL S044: std_logic;
  SIGNAL S045: std_logic;
  SIGNAL S046: std_logic;
  SIGNAL S047: std_logic;
  SIGNAL S048: std_logic;
  SIGNAL S049: std_logic;
  SIGNAL S050: std_logic;
  SIGNAL S051: std_logic;
  SIGNAL S052: std_logic;
  SIGNAL S053: std_logic;
  SIGNAL S054: std_logic;
  SIGNAL S055: std_logic;
  SIGNAL S056: std_logic;


BEGIN -- structural

  ----------------------------------------> Input:
  S015 <= i4;
  S014 <= i5;
  S013 <= i6;
  S021 <= i7;
  S020 <= i8;
  S019 <= i9;
  S018 <= i1;
  S017 <= i2;
  S016 <= i3;

  ----------------------------------------> Output:
  oID0003(0) <= not(S006);
  oID0003(1) <= not(S007);
  oID0003(2) <= not(S003);
  oID0003(3) <= not(S002);
  oID0003(4) <= not(S001);
  oID0003(5) <= not(S005);
  oID0003(6) <= not(S004);
  oID0003(7) <= not(S008);

  ----------------------------------------> Constants:
  S008 <= '0';

  ----------------------------------------> Component Mapping:
  B1_C001: AND2_gate PORT MAP ( S042, S010, S022 );
  B1_C002: AND2_gate PORT MAP ( S011, S035, S023 );
  B1_C003: AND2_gate PORT MAP ( S010, S028, S024 );
  B1_C004: AND2_gate PORT MAP ( S011, S035, S025 );
  B1_C005: AND2_gate PORT MAP ( S035, S028, S026 );
  B1_C006: AND2_gate PORT MAP ( S028, S011, S027 );
  B1_C007: AND2_gate PORT MAP ( S028, S010, S041 );
  B1_C008: AND2_gate PORT MAP ( S042, S028, S040 );
  B1_C009: AND2_gate PORT MAP ( S028, S010, S039 );
  B1_C010: AND2_gate PORT MAP ( S042, S028, S038 );
  B1_C011: AND2_gate PORT MAP ( S042, S010, S037 );
  B1_C012: AND3_gate PORT MAP ( S035, S011, S009, S036 );
  B1_C013: AND2_gate PORT MAP ( S010, S009, S034 );
  B1_C014: AND2_gate PORT MAP ( S042, S029, S033 );
  B1_C015: AND2_gate PORT MAP ( S035, S028, S032 );
  B1_C016: AND2_gate PORT MAP ( S009, S011, S031 );
  B1_C017: AND2_gate PORT MAP ( S028, S042, S030 );
  B1_C018: OR4_gate PORT MAP ( S031, S012, S030, S010, S006 );
  B1_C019: OR5_gate PORT MAP ( S038, S037, S039, S036, S012, 
                               S002 );
  B1_C020: OR2_gate PORT MAP ( S040, S041, S001 );
  B1_C021: OR4_gate PORT MAP ( S023, S022, S024, S012, S004 );
  B1_C022: OR4_gate PORT MAP ( S026, S025, S027, S012, S005 );
  B1_C023: OR4_gate PORT MAP ( S032, S033, S012, S034, S007 );
  B1_C024: OR3_gate PORT MAP ( S009, S035, S011, S003 );
  B1_C026: NOT_gate PORT MAP ( S009, S028 );
  B1_C027: NOT_gate PORT MAP ( S010, S035 );
  B1_C028: NOT_gate PORT MAP ( S011, S042 );
  B1_C029: NOT_gate PORT MAP ( S012, S029 );
  B2_C001: NOT_gate PORT MAP ( S020, S050 );
  B2_C002: NOR2_gate PORT MAP ( S013, S020, S049 );
  B2_C003: NOR3_gate PORT MAP ( S013, S020, S015, S048 );
  B2_C004: NOR4_gate PORT MAP ( S015, S013, S017, S020, S047 );
  B2_C005: AND2_gate PORT MAP ( S021, S050, S043 );
  B2_C006: AND2_gate PORT MAP ( S049, S014, S044 );
  B2_C007: AND2_gate PORT MAP ( S048, S016, S045 );
  B2_C008: AND2_gate PORT MAP ( S047, S018, S046 );
  B2_C009: OR3_gate PORT MAP ( S013, S021, S051, S052 );
  B2_C010: OR2_gate PORT MAP ( S016, S017, S056 );
  B2_C011: NOR2_gate PORT MAP ( S014, S015, S055 );
  B2_C012: AND2_gate PORT MAP ( S056, S055, S051 );
  B2_C017: OR4_gate PORT MAP ( S013, S014, S021, S015, S054 );
  B2_C018: AND2_gate PORT MAP ( S053, S052, S010 );
  B2_C019: AND2_gate PORT MAP ( S054, S053, S011 );
  B2_C020: NOR2_gate PORT MAP ( S019, S020, S053 );
  B2_C021: OR2_gate PORT MAP ( S019, S020, S012 );
  B2_C022: OR5_gate PORT MAP ( S044, S045, S043, S046, S019, 
                               S009 );
END structural;
