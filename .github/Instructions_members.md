## How to update highlighted publications
This is done by creating a new entry at "\_data/publist.yml"
Each entry has several fields that must be completed. Two of them are especial:
1. 'highlight:'. This field is a flag that indicates whether (1) or not (0) the entry should be processed and included;
2. 'image:'. This field id the filename (with extension) of the image that will appear to the left. The image should be saved under the forlder 'images/pubpic/'

### Here is the example of an entry on "\_data/publist.yml"
- title: "Safety, Security and Privacy for Cyber-Physical Systems"
  image: Springer_book_2021.png
  description: This book presents an in-depth overview of recent work related to the safety, security, and privacy of cyber-physical systems (CPSs). It brings together contributions from leading researchers in networked control systems and closely related fields to discuss overarching aspects of safety, security, and privacy; characterization of attacks; and solutions to detecting and mitigating such attacks.<br/>The book begins by providing an insightful taxonomy of problems, challenges and techniques related to safety, security, and privacy for CPSs. It then moves through a thorough discussion of various control-based solutions to these challenges, including cooperative fault-tolerant and resilient control and estimation, detection of attacks and security metrics, watermarking and encrypted control, privacy and a novel defense approach based on deception. The book concludes by discussing risk management and cyber-insurance challenges in CPSs, and by presenting the future outlook for this area of research as a whole.<br/>Its wide-ranging collection of varied works in the emerging fields of security and privacy in networked control systems makes this book a benefit to both academic researchers and advanced practitioners interested in implementing diverse applications in the fields of IoT, cooperative autonomous vehicles and the smart cities of the future.
  authors: Riccardo M. G. Ferrari and André M. H. Teixeira (Eds)
  year: 2021
  link:
    url: https://doi.org/10.1007/978-3-030-65048-3
    display: Lecture Notes in Control and Information Sciences (LNCIS, volume 486), Springer International Publishing, (2021)
  highlight: 1
  news2: 
  long: 1




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

The field tag is used to select the publication to be included in a given research theme (for now awe can use "tag" and "taga" for tagging up to 2 areas).