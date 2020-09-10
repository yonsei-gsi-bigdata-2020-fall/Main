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
