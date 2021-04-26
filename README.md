# r.dvc.api

Intended as a wrapper for the python [dvc api](https://dvc.org/doc/api-reference)

```
require(r.dvc.api)
# conda env where dvc is installed 
reticulate::use_python(python = '/home/d/miniconda3/envs/r-dvc-api/bin/python',required = T)

get_url(path = 'get-started/data.xml',
        repo='https://github.com/iterative/dataset-registry')


```
