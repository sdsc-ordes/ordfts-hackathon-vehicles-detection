# ORD for the Sciences Hackathon - Vehicles Detection

> [!CAUTION]
> This project is still under heavy development. 

This is an example of a hackathon project presented to `ORD for the sciences hackathon` using the openly available [pNeuma vision dataset](https://zenodo.org/records/7426506). 

- [Go here if you wanna know more about the hackathon](https://sdsc-hackathons.ch/)
- [EPFL pNeuma project](https://open-traffic.epfl.ch)

## Roadmap

- Dataloader from original zenodo
    - https://zenodo.org/records/7426506
- Dataloader from mounted s3 with original zenodo. 
- Dataloader from parquet mirror in Zenodo using duckDB (to be uploaded).
- Develop script/notebook to segment vehicles using third-party models. 
    - Segment anything Base (https://huggingface.co/facebook/sam-vit-base)
    - Segment anything Large (https://huggingface.co/facebook/sam-vit-large)
- Technical benchmark comparing entire pipeline running time and other relevant parameters.
- Model benchmark comparing segmentation quality.
- Upload segmented frames to HF datasets (get DOI)


## How is structured this repository?

- 001_parquet_converter.ipynb
- 002_vehicles_detection.ipynb
- 003_huggingface_uploader.ipynb


