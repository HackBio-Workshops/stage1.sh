# stage1.sh
# HackBio Genomics Task1

#Count the number of sequences in DNA.fa
wget https://raw.githubusercontent.com/HackBio-Internship/wale-home-tasks/main/DNA.fa
ls
grep ‘>’ DNA.fa
grep ‘>’ DNA.fa | wc -l

#Write a one-line command in Bash to get the total A, T, G & C counts for the sequence in the file above
wc -m DNA.fa

#Install fastqc
sudo apt-get -y update && \
sudo apt-get -y install trimmomatic fastqc python-pip \
samtools zlib1g-dev ncurses-dev python-dev
pip install multiqc

#Install bwa
sudo apt-get -y install bwa

#Install samtools
sudo apt-get -y install samtools

#Download Alsen_R1_rep.fastq.gz
wget https://github.com/josoga2/yt-dataset/blob/main/dataset/repaired/Alsen_R1_rep.fastq.gz
 
#Download ACBarrie.sam
wget https://github.com/josoga2/yt-dataset/blob/main/dataset/alignment/ACBarrie.sam

#Create a folder called output
mkdir ~/output

#Download and implement fastqc (Chara_R1.fastq.gz)
wget wget wget https://github.com/josoga2/yt-dataset/blob/main/dataset/raw_reads/Chara_R1.fastq.gz?raw=true -O Chara_R1.fastq.gz

#Implement BWA
ls
bwa index 
bwa mem -t Alsen_R1_rep.fastq.gz?raw=true.bwt > Alsen_R1_rep.fastq.gz?raw=true.sam

#Implement samtools
ls
samtools view -hSbo ACBarrie.bam ACBarrie.sam?raw=true
samtools sort ACBarrie.bam ACBarrie.sorted
samtools index
samtools tview
