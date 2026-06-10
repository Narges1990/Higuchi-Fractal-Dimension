# Higuchi Fractal Dimension (HFD) for MATLAB

MATLAB implementation of the Higuchi's Fractal Dimension (HFD) algorithm for estimating the complexity of one-dimensional physiological time-series signals.

## Overview

The Higuchi Fractal Dimension is a nonlinear measure widely used to characterize signal complexity and self-similarity. This implementation was used in our published research investigating the nonlinear dynamics of beta-band MEG and EMG activity during sustained isometric contraction.

## Function
~~~matlab
FD = fractal_dimension_higuchi(signal, k_max)
~~~

## Inputs

| Parameter | Description |
|-----------|-------------|
| signal | One-dimensional input signal |
| k_max | Maximum scale parameter used by Higuchi's algorithm |

## Output

| Variable | Description |
|----------|-------------|
| FD | Estimated Higuchi Fractal Dimension |

## Example
~~~matlab
signal = randn(1,1000);
FD = fractal_dimension_higuchi(signal,10);
disp(FD)
~~~

## Applications

- EEG analysis
- MEG analysis
- EMG analysis
- Motor control research
- Nonlinear dynamics
- Biomedical signal processing

## Related Publication

Hakkak Moghadam Torbati A., Georgiev C., Digileva D., Yanguma Muñoz N., Cabaraux P., Davoudi N., Piitulainen H., Jousmäki V., Bourguignon M.

Nonlinear Dynamics of MEG and EMG: Stability and Similarity Analysis.

Brain Sciences, 2025, 15(7), 681.

DOI: [10.3390/brainsci15070681](https://doi.org/10.3390/brainsci15070681)

## Citation

If you use this code in your research, please cite the associated publication.

## License

This repository is provided for academic and research purposes.
