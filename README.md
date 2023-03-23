## From Boris Novakovic

Basically, we have two batches:

CHART study (78 naturally-conceived adults (mid 20s – early 30s), both male and female, and ~160 ART
conceived individuals – IVF mainly).

HIM study (Males between 18 and mid 20s, conceived by ICSI
https://academic.oup.com/hropen/article/2020/4/hoaa042/5917567).
 
We hope that the naturally conceived male individuals from CHART can be controls to identify DMPs in
HIM individuals that are associated with ICSI.

We can maybe also use the CHART IVF individuals as some sort of additional batch control?
Perhaps we can make sure that once you run RUV, we can still see the DMPs we found in CHART in the
Nature comms paper.

If we can make this work and be confident we removed batch, while keeping some of the ‘real’ 
biology-associated marks, we could potentially aim to submit this study in this special call at eLife
by 30th September:

https://elifesciences.org/inside-elife/ddab483b/special-issue-call-for-papers-in-reproductive-health

Two of their potential topics that this would fit into:

Long-term safety of assisted reproductive technology (ART) with an emphasis on health perspectives of individuals born through the 2nd- (ICSI) and 3rd-generation (PGT) ARTs
Epigenetic mechanisms of intra- or intergenerational transmission of disease phenotypes
Thanks,

We can then approach the collaborators for replication cohorts (GUSTO and MoBa both have ICSI)

In this drive, I put both the HIM and CHART idats + sample sheet with information about the donors:

Run in different years, so the batch effect was really where we’re not sure how to proceed, but Jane
Halliday and Sharon Lewis are keen to publish this dataset, so if any result can be derived and the
technical issues removed, it would be potentially of interest to the field.

## My tasks

1. Load the data and sample sheet into R.

2. Make a PCA plot of all samples.

3. Make a PCA plot of each study group, labeled for sex, gestatonal age, gestational weight, etc.

4. Run a limma.
