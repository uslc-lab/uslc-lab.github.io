## How to update highlighted publications
This is done by creating a new entry at "\_data/publist.yml"
Each entry has several fields that must be completed. Two of them are especial:
1. 'highlight:'. This field is a flag that indicates whether (1) or not (0) the entry should be processed and included;
2. 'image:'. This field id the filename (with extension) of the image that will appear to the left. The image should be saved under the forlder 'images/pubpic/'


## How to update the the list of team members
The list of team members can be updated by modifing the data files "\_data/team_members.yml" and "\_data/students.yml"

Save the profile photo of the team member in the file 'images/teampic/'. If a team member does have a photo, one can use the file 'bio-photo.jpg' as a "blank photo".


## How to update the News items
News items correspond to entries at '\_data/news.yml'
Items can be created continuosly, the website generator automatically keeps the 9 latests items for display at the front page.



## How to update the publication list
There are two steps involved:
1. update the .bib file inside the folder '\_bibliography'
2. upload the corresponding PDF file to the folder 'assets/papers/'

For step 1, see the minimal example below:
@inproceedings{Teixeira_CDC9999,
	address={},
	author = {A. M. H. Teixeira},
	booktitle = {Conference},
	title = {The Fantastic Example},
	year = {9999},
	tag={},
	abstract = {This paper proposes...},
	doi = {10.1109/CDC51059.2022.9992468},
	arxiv = {2210.04091},
	pdf = {file_name}
}

The final four fields are used to construct buttons that link to the respective items. The website's engine automatically ads prefix to the the DOI and Arxiv, and the '.pdf' suffix to the filename.

The field tag is used to select the publication to be included in a given research theme (for now a many-to-one mapping, extending this is work in progress).