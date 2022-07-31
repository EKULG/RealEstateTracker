FROM python:3.8.6-buster

COPY Web/model.joblib Web/model.joblib
COPY RealEstateTracker/utils.py RealEstateTracker/utils.py

COPY Web/streamlite/pages/3_App.py Web/streamlite/pages/3_App.py
COPY Web/streamlite/pages/4_Dashboard.py Web/streamlite/pages/4_Dashboard.py
COPY Web/streamlite/pages/5_About_us.py Web/streamlite/pages/5_About_us.py
COPY Web/streamlite/Intro.py Web/streamlite/Intro.py
COPY Web/app.py Web/app.py
COPY Web/dashboard.py Web/dashboard.py
COPY Web/map.py Web/map.py
COPY RealEstateTracker/__init__.py RealEstateTracker/__init__.py
COPY RealEstateTracker/preprocessing.py RealEstateTracker/preprocessing.py
COPY RealEstateTracker/pipeline.py RealEstateTracker/pipeline.py
COPY setup.py /setup.py
COPY requirements.txt /requirements.txt
COPY MANIFEST.in /MANIFEST.in
COPY RealEstateTracker/data RealEstateTracker/data

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD streamlit run Web/streamlite/Intro.py  --server.port 8501
