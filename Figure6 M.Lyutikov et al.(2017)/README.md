# Figure 6 Reproduction — Polarization Swings in Blazars

## Overview

This project reproduces Figure 6 from the paper:

**Lyutikov, M. & Kravchenko, E. V. (2017)**  
*Polarization Swings in Blazars*

The simulation studies the relationship between polarization fraction, Electric Vector Position Angle (EVPA), and observed intensity in relativistic AGN jets containing ordered helical magnetic fields.

The reproduced figure demonstrates how relativistic geometry and Doppler boosting modify observed polarization signatures for different observer viewing angles and intrinsic magnetic pitch angles.

---

## Physics Background

The model assumes:

- Relativistic jet motion
- Helical magnetic field geometry
- Synchrotron dominated radiation
- Relativistic aberration
- Doppler boosted emission

The observer viewing angle evolves as:

```text
θ_obs = arccos(cos θ₀ · cos φ)
```

where:

- θ₀ = minimum observer viewing angle
- φ = jet oscillation angle

The polarization fraction is calculated through:

```text
Π ∝ cos(2ψ) sin²(θ′)
```

where:

- ψ = intrinsic magnetic pitch angle
- θ′ = observer angle in the comoving frame

The Doppler boosting factor is:

```text
D = 1 / [γ(1 − β cos θ)]
```

where:

- γ = bulk Lorentz factor
- β = v/c

The observed intensity is approximated as:

```text
I ∝ D³
```

---

## Contents

This folder contains:

- `Lyutikov Fig 6 2017.ipynb`  
  Jupyter notebook containing the complete simulation and plotting procedure.

- `Lyutikov_Figure6.png`  
  Final reproduced figure.

---

## Libraries Used

- NumPy
- Matplotlib

Install dependencies using:

```bash
pip install numpy matplotlib
```

---

## Generated Outputs

The reproduced figure contains:

### Top Panels
- Polarization fraction (Π)
- Variation as a function of EVPA

### Bottom Panels
- Intensity variation
- Dependence on polarization fraction

The simulations are performed for:

```text
θ_ob,0 = 1/(5γ), 1/γ, 2/γ
```

with Lorentz factor:

```text
γ = 10
```

and multiple intrinsic magnetic pitch angles.

---

## Scientific Motivation

Blazar polarization observations frequently show large EVPA rotations accompanied by simultaneous changes in polarization fraction and intensity.

This model demonstrates that many of these behaviors can naturally emerge from relativistic geometry and ordered helical magnetic field structures without requiring rapid intrinsic changes in the emitting plasma.

The reproduced figure highlights the importance of relativistic Doppler boosting and magnetic field geometry in shaping observable synchrotron polarization signatures from AGN jets.

---

## Reference

Lyutikov, M., & Kravchenko, E. V. (2017).  
*Polarization Swings in Blazars*  
The Astrophysical Journal.

---

## Author

Dhanad Jha

Supervisor:  
Dr. Bhargav Vaidya, IIT Indore

GitHub Repository:
https://github.com/Dhanad1905/High-Energy-Polarization-Signatures-From-AGN-Jets#high-energy-polarization-signatures-from-agn-jets
