# Gut Metaproteomics : PXD063632

## Overview
Independent replication of the MetaDIA paper (Duan et al. 2026) benchmark experiment using FragPipe v23.1 on dataset PXD063632 from PRIDE database.

## Dataset
- Source: PRIDE database PXD063632
- Publication: Duan et al. 2026 — MetaDIA: A DDA-free Database Reduction Strategy for DIA Human Gut Metaproteomics
- 9 samples in triplicate:
  - MIX1 (Sample C): Pure Blautia hydrogenotrophica
  - MIX17 (Sample A): Pure human gut microbiome stool
  - MIX2 (Sample B): 50:50 mix of MIX1 and MIX17

## Software
- FragPipe 23.1 | MSFragger 4.3 | DIA-NN 1.8.2 beta 8
- MSBooster 1.3.17 | Percolator 3.7.1 | IonQuant 1.11.11
- Run via Apptainer container on Burnet Institute HPC

## FragPipe Searches
| Search | Database | Entries | Normalisation |
|--------|----------|---------|---------------|
| Blautia-only | blautia_only_db.fasta  | --no-norm |
| Microbiome-only | gut_microbiome_only_db.fasta |  --no-norm |
| Combined v2 | combined_metaproteome_db_final_v2.fasta | 59 species | default |

## Key Parameters
- Workflow: DIA_SpecLib_Quant (library-free)
- Enzyme: strict trypsin
- Missed cleavages: 1
- Peptide length: 7-50 aa
- Precursor mass tolerance: 20 ppm
- Fragment mass tolerance: 20 ppm
- FDR: 1%

## Repository Structure
├── README.md
├── fragpipe-files.fp-manifest
├── workflows/
│   ├── fragpipe_blautia_only.workflow
│   ├── fragpipe_microbiome_only.workflow
│   └── fragpipe_combined_v2.workflow
└── slurm/
    ├── fragpipe_blautia_only.slurm
    ├── fragpipe_microbiome_only.slurm
    └── fragpipe_gut_v2.slurm

