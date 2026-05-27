# Figure 2 Reproduction — Multifrequency Polarimetric Observations of BL Lac

## Overview

This project reproduces Figure 2 from the paper:

**Tavecchio, F. et al.**  
*Do multifrequency polarimetric observations of BL Lac exclude a hadronic origin of its X-ray emission?*

The simulation investigates the polarization behavior of synchrotron emission in relativistic AGN jets under different magnetic field structures and non-thermal particle population models.

The reproduced figure compares:

- X-ray polarization fraction
- Optical-to-X-ray polarization chromaticity
- Different jet expansion profiles
- Different particle density prescriptions

for relativistic magnetized jets.

---

## Physics Background

The model assumes:

- Relativistic AGN jet outflow
- Ordered large-scale magnetic fields
- Synchrotron dominated emission
- Cylindrical jet geometry
- Frequency-dependent polarization properties

The magnetic field structure evolves according to a self-similar relativistic jet model.

The magnetic field components are calculated as:

```text
B = (B_R, B_φ, B_z)
```

with helical magnetic field geometry depending on:

- jet expansion parameter q
- cylindrical radius R
- longitudinal distance z

The observed synchrotron polarization is calculated using the Stokes parameter formalism:

```text
Π = √(Q² + U²) / I
```

where:

- I = total intensity
- Q, U = linear polarization Stokes parameters

The synchrotron emissivity depends on the perpendicular magnetic field component:

```text
|B × n|
```

where:

- B = magnetic field vector
- n = observer direction

---

## Numerical Method

The polarization calculations are performed through numerical integration over:

- azimuthal angle φ
- cylindrical radius R
- longitudinal jet coordinate z

The Stokes parameters are evaluated using multidimensional numerical integration:

```text
dblquad()
```

from SciPy.

The integrations account for:

- relativistic Doppler boosting
- magnetic field geometry
- observer orientation
- particle population evolution

Two different non-thermal electron population models are considered:

### 1. Constant Particle Density

```text
K_e = constant
```

### 2. Magnetically Scaled Particle Density

```text
K_e ∝ B²
```

---

## Contents

This folder contains:

- `Figure2 Tavecchio.ipynb`  
  Jupyter notebook containing the full numerical implementation and plotting procedure.

- `Tavecchio Image.jpg`  
  Final reproduced figure.

---

## Libraries Used

- NumPy
- Pandas
- Matplotlib
- SciPy

Install dependencies using:

```bash
pip install numpy pandas matplotlib scipy
```

---

## Generated Outputs

The reproduced figure shows:

### Top Panels
- X-ray polarization fraction Π_X
- Dependence on emission region thickness Δz/z₀

### Bottom Panels
- Optical-to-X-ray polarization chromaticity:
  
```text
Π_O / Π_X
```

The calculations are performed for:

```text
q = 0.6, 0.7, 0.8
```

under two particle population models:

- K_e = constant
- K_e ∝ B²

The simulations compare polarization behavior for:

- optical synchrotron emission
- X-ray synchrotron emission

under different jet evolution scenarios.

---

## Scientific Motivation

Polarization measurements provide one of the strongest observational diagnostics for distinguishing between leptonic and hadronic emission models in relativistic AGN jets.

Hadronic models generally predict:

- stronger magnetic field ordering
- larger X-ray polarization fractions
- distinct chromatic polarization behavior

This model investigates whether observed multifrequency polarization properties of BL Lac objects are compatible with hadronic X-ray emission scenarios.

The reproduced figure demonstrates how:

- jet geometry
- magnetic field evolution
- particle transport
- emission region thickness

strongly influence observable polarization signatures.

---

## Reference

Tavecchio, F. et al.  
*Do multifrequency polarimetric observations of BL Lac exclude a hadronic origin of its X-ray emission?*

Astronomy & Astrophysics.

---

## Author

Dhanad Jha

Supervisor:  
Dr. Bhargav Vaidya, IIT Indore

GitHub Repository:
https://github.com/Dhanad1905/High-Energy-Polarization-Signatures-From-AGN-Jets#high-energy-polarization-signatures-from-agn-jets)
