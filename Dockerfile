FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y bash coreutils

COPY empty_cells /usr/local/bin/empty_cells
COPY preprocess /usr/local/bin/preprocess
COPY analysis /usr/local/bin/analysis

# 复制所有数据文件
COPY tiny_sample.tsv /usr/local/bin/tiny_sample.tsv
COPY tiny_sample.txt /usr/local/bin/tiny_sample.txt
COPY tiny_clean.tsv /usr/local/bin/tiny_clean.tsv
COPY tiny_sample.xlsx /usr/local/bin/tiny_sample.xlsx
COPY bgg_dataset.txt /usr/local/bin/bgg_dataset.txt
COPY sample.tsv /usr/local/bin/sample.tsv
COPY sample1.txt /usr/local/bin/sample1.txt
COPY sample.txt /usr/local/bin/sample.txt
COPY sample1.tsv /usr/local/bin/sample1.tsv

WORKDIR /usr/local/bin

RUN chmod +x /usr/local/bin/empty_cells
RUN chmod +x /usr/local/bin/preprocess
RUN chmod +x /usr/local/bin/analysis

CMD ["bash"]