# FAQ
매주 수업 및 과제에 대해서 나온 질문에 대한 답변

## Week-01
- 과제 제출 방식을 알려주세요
    - 다음영상을 참고하세요 [영상](https://www.loom.com/share/936a6a621d9b4e01813143d4df7bf2ba)
- 머신러닝에 대해서 배우나요?
    - 4주차 부터 8주차에 집중적으로 배웁니다.
- 파이썬/프로그래밍이 처음인데 괜찮을까요?
    - 다른 프로그래밍 경험이 있는데, 파이썬이 처음이면 괜찮습니다.
    - 프로그래밍 자체가 처음이신 분들은 수업을 유의미하게 수강하시려면 개별적으로 공부를 많이 하셔야 됩니다.
- 프로젝트에 대해서 감이 안옵니다. 조금 더 자세한 가이드를 주실 수 있나요?
    - 일단 데이터 + 머신러닝을 이용함이라는 조건이 필수조건이고, 그 외에는 자유롭습니다. 아래 예시가 있습니다.
        - 예1) Kaggle이나 Dacon에 진행/종료된 Competition에서 제공하는 Data와 Task를 참여하는 과정에 대한 프로젝트 (EDA, 전처리, 학습, 튜닝, 결과)
        - 예2) 평소에 개인적으로 관심있던 분야에 대한 연구 (단, 데이터와 머신러닝 알고리즘이 포함되어야 함)
    - 성능을 측정할 수 있는 과제 (정확도, 속도 등)
- 영상과 PDF를 조금 더 일찍 올려주실 수 있을까요?
    - 늦어도 수요일까지 올려드리겠습니다!

## Week-02
- `git pull` 명령어 입력시 다음과 같은 에러가 나옵니다
    ```
    remote: Enumerating objects: 9, done.
    remote: Counting objects: 100% (9/9), done.
    remote: Compressing objects: 100% (3/3), done.
    remote: Total 5 (delta 2), reused 0 (delta 0), pack-reused 0
    Unpacking objects: 100% (5/5), done.
    From https://github.com/yonsei-gsi-bigdata-2020-fall/2009147090
       2accfc0..ae97d0b  master     -> origin/master
    Updating 2accfc0..ae97d0b
    error: Your local changes to the following files would be overwritten by merge:
        assignment/week-01/README.md
    Please commit your changes or stash them before you merge.
    Aborting
    ```
    - 이런경우 
        ```
        git add .
        git commit -m "Sync my repo"
        (터미널 화면이 바뀌면 :wq 입력)
        git pull
        ```
        

## Week-03

## Week-04
- f.write("data.csv")와 to_csv와의 차이?
  - to_csv의 경우 Pandas라는 라이브러리에서 제공하는 DataFrame의 Method
  - to_csv를 쓰는 경우는, 이미 데이터를 DataFrame으로 로드 한 상태
  - f.write은 가장 기본이 되는 Python의 file 쓰기 방식
  
- encoding utf-8?
  - 기본적으로 OS의 환경에 따라 한글을 인코딩하는 방식이 다름. (utf-8, euc-kr, CP949 등등)
  - 그렇기 때문에, 다른 환경간의 텍스트 파일 읽기 쓰기는 인코딩을 명시적으로 지정을 할 필요성이 있음
  - ``` open(Filename, 'r', encoding='utf-8')```
  - 대부분의 환경에서 지원하는 유니코드 인코딩 방식인 utf-8 명시해주는게 일반적!

## Week-05
- 카테고리가 30개일때 One-Hot 인코딩으로 표현을 하면, 30개의 컬럼이 추가되어야 하나?
    - 현실적으로 모든 카테고리가 균등하게 분포되어있지 않을 것이기 때문에, 상위 3개 정도만 뽑고 나머지 카테고리들은 하나로 생각을해서 4개의 값으로 one hot 인코딩을 하는 방법이 있고
    - 일반적으로는, binary 인코딩으로 각각의 카테고리에 번호를 매긴다음 그들을 binary로 변환
- 인코딩이나 정규화를 하면, 새로운 컬럼을 추가해야하나?
    - 정규화 같은 경우에는 기존 값을 대체해도 되지만 인코딩 같은 경우는 1개로 표현되던 Feature가 여러개로 표현되기 때문에, 추가를 해주셔야 합니다
- text 전처리 관련해서, JAVA 설치에 문제가 있는데, 코랩에서 해도 되나요?
    - 네! 코랩에서는 바로 적용 가능합니다!
- Kahoot을 통해 출석체크가 이뤄지나요?
  - 아닙니다. 그냥 재미-반 복습-반의 목적입니다!