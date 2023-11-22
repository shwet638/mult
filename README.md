# 8-Bit Multiplication Designs

This Git project contains three designs for 8-bit multiplication, each producing a 16-bit output. The designs are implemented using different multipliers and have varying resource utilization and operating frequencies.

## Designs

### 1. Vedic Multiplier

- **Description:** Unsigned Vedic multiplier.
- **Logic Elements:** 175
- **Frequency:** 128MHz

#### Instantiations

| #Multipliers | Logic Elements  |  BRAMs | Frequency |
|--------------|-----------------|-------|-----------|
| 1            | 175             | N/A   | 128MHz    |
| 72           | 14786           | 3     | 99.02MHz  |
| 144          | 29758           | 3     | 93.31MHz  |
| 288          | 58514           | 4     | 83.535MHz |

### 2. DADA Multiplier

- **Description:** Unsigned DADA multiplier.
- **Logic Elements:** 180
- **Frequency:** 179.5MHz

#### Instantiations

| #Multipliers | Logic Elements | BRAMs | Frequency |
|--------------|----------------|-------|-----------|
| 1            | 180            |  N/A  | 179.856MHz|
| 72           | 14433          |  3    | 112.3MHz  |
| 144          | 29517          |  3    | 104.297MHz|
| 288          | 56482          |  4    | 92.217MHz |

### 3. Carry Save Adder Multiplier

- **Description:** Carry save adder unsigned multiplier.
- **Logic Elements:** 161
- **Frequency:** 106MHz

#### Instantiations

| #Multipliers | Inputs | BRAMs | Frequency |
|--------------|--------|-------|-----------|
| 1            | 161    | N/A   | 105.042MHz|
| 72           | 13206  | 3     | 96.82MHz  |
| 144          | 26465  | 3     | 90.926MHz |
| 288          | 52810  | 4     | 76.605MHz |

### 4. DADA Signed Multiplier

- **Description:** Signed DADA multiplier.
- **Logic Elements:** 185
- **Frequency:** 143MHz

### Top Module

The top module for each design is named "top.v".

## Usage

To use any of the designs, navigate to the respective design directory and refer to the "top.v" module.

Feel free to explore, modify, and integrate these designs into your project!
