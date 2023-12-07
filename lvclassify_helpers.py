import pandas as pd
import json

def getlvstopwords():
    stopwords_file = open('stopwords-lv2.json', 'r', encoding="utf8")
    stopwords_arr = json.load(stopwords_file)
    return stopwords_arr


def getdata10cat():
    raksti_sports = pd.read_json('extracts/sports.json')
    raksti_politika = pd.read_json('extracts/politika.json')
    raksti_literatura = pd.read_json('extracts/literatura.json')
    raksti_bizness = pd.read_json('extracts/finanses.json')
    raksti_atputa = pd.read_json('extracts/atputa.json')
    raksti_kriminalzinas = pd.read_json('extracts/kriminalzinas.json')
    raksti_kino = pd.read_json('extracts/kino.json')
    raksti_muzika = pd.read_json('extracts/muzika.json')
    raksti_auto = pd.read_json('extracts/auto.json')
    raksti_tehnologijas = pd.read_json('extracts/tehnologijas.json')
    max_art = 1200
    data_news = pd.concat([raksti_sports.head(max_art), raksti_politika.head(max_art),
                           raksti_literatura.head(max_art), raksti_bizness.head(max_art),
                           raksti_atputa.head(max_art), raksti_kriminalzinas.head(max_art),
                           raksti_kino.head(max_art), raksti_muzika.head(max_art),
                           raksti_auto.head(max_art), raksti_tehnologijas.head(max_art)])
    data_news.drop(['title', 'link'], axis=1, inplace=True)
    return data_news

