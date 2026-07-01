# Gut Metaproteomics : PXD063632

## Overview
Independent replication of the MetaDIA paper (Duan et al. 2026) benchmark experiment using FragPipe v23.1 on dataset PXD063632 from PRIDE database.

## Dataset
- Source: PRIDE database PXD063632
- Publication: Duan et al. 2026, MetaDIA: A DDA-free Database Reduction Strategy for DIA Human Gut Metaproteomics
- 9 samples in triplicate:
  - MIX1: Pure Blautia hydrogenotrophica
  - MIX17: Pure human gut microbiome stool
  - MIX2: 50:50 mix of MIX1 and MIX17

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
- Precursor mass tolerance: 20 ppm
- Fragment mass tolerance: 20 ppm
- FDR: 1%

## Reference Databases

All reference databases are available for download from the GitHub Release:

**[Download Reference Databases v1.0](https://github.com/SwanithaVelankhaniGopu/Metaproteomics/releases/tag/v1.0)**

| File | Size | Description |
|---|---|---|
| blautia_only_db.fasta.gz | 1.3 MB | Blautia hydrogenotrophica only |
| gut_microbiome_only_db.fasta.gz | 239 MB | Full gut microbiome database |
| combined_metaproteome_db_final_v2.fasta.gz | 240 MB | Combined metaproteome, 59 species |

Decompress with:
```bash
gunzip filename.fasta.gz
```

## Repository Structure
```
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
```

## Related Resources

- [PRIDE Dataset PXD063632](https://www.ebi.ac.uk/pride/archive/projects/PXD063632)
- [FragPipe Documentation](https://fragpipe.nesvilab.org/)
- [Proteomics Benchmarking Repo](https://github.com/SwanithaVelankhaniGopu/Proteomics)


