# Memorizing - 나만의 암기장 <img src="https://user-images.githubusercontent.com/107039500/217715514-adf5eaa8-eda8-428a-9234-fd2254e42af2.png" width="25" height="25">
> 스스로 만들고 학습하며, 타인과 함께 공유하는 암기장, Memorizing

#### 프로젝트 페이지<a href="https://www.notion.so/memorizing/7186dcfc77794dd593dc292be31df131?pvs=4" target="_blank"><img src="https://img.shields.io/badge/Notion-000000?style=flat&logo=Notion&logoColor=white"/></a>

<img src="https://user-images.githubusercontent.com/111134273/221109890-c30a3515-dcd8-47d7-9d5c-e21d86af7343.png" width="13%" height="13%"> <img src="https://user-images.githubusercontent.com/111134273/221109898-48744fab-f69b-49ed-b817-03e12a7ab578.png" width="13%" height="13%"> <img src="https://user-images.githubusercontent.com/111134273/221109908-99342b0a-21ce-4e55-8614-b5c516941c9f.png" width="13%" height="13%"> <img src="https://user-images.githubusercontent.com/111134273/221109918-0ac8e8a4-08dd-4c6c-a432-2ad31158d696.png" width="13%" height="13%"> <img src="https://user-images.githubusercontent.com/111134273/221109927-f9031d1b-2c8d-42c2-8642-5cec2f54ddb0.png" width="13%" height="13%"> <img src="https://user-images.githubusercontent.com/111134273/221109937-046a163b-778f-4365-a5a7-006dc43f63ae.png" width="13%" height="13%"> <img src="https://user-images.githubusercontent.com/111134273/221109942-9c24a636-4129-4778-a9df-f67731f12ca0.png" width="13%" height="13%">

<br>

## 1. 프로젝트 개요
### 1-1. ADS (App Define Statement)
`🫨 이루고 싶은 성과나 목표를 포기하지 마세요. 과학적인 암기로직을 통해 효율적인 학습을 도와드릴게요 📖`

<br>

### 1-2. Persona
`🔎 어렵고 지루한 암기, 정답은 타이밍과 반복학습!`
>📝 중학생 : 중간고사가 코앞으로 다가왔는데, 하루만 시간이 더 있었으면..  
>🤷🏻‍♂️ 취준생 : 가까스로 어려운 단어를 암기했는데, 일주일만 지나도 기억이 흐릿해!  
>📗 직장인 : 지하철에서 영단어 공부를 하고 싶은데, 책을 들고다니긴 불편해..

<br>

### 1-3. 아이디어 구상

<br>

`효율적인 암기방식에 대한 과학적으로 증명된 자료 수집 및 앱 내 구현 가능성 파악`
 >에빙하우스 망각곡선(forgetting curve) 이론을 바탕으로 암기방식 구체화  
 >망각에 대한 문제를 극복하기 위한 총 **4단계의 반복적인 학습루틴**을 해결책으로 제시

`암기장 생성과 학습 이외, 타인과 함께 유용한 암기지식을 공유할 수 있는 마켓기능 구상`
 >단순한 암기학습에서 나아가, 나만의 단어장을 **2차 산출물로 공유**할 수 있도록 아이디어 제시  
 >마켓 및 포인트 기능을 도입함으로서 사용자 중심의 **활발한 앱 생태계 구축** 도모

<br>

### 1-4. 주요성과 
🏅`멋쟁이 사자처럼 앱스쿨 1기 해커톤(23.01.06) : 최우수상 수상`

<br>

## 2. 추진과정 및 주요기능

### 2-1. 기능별 팀구성 및 추진과정

#### 팀 구성 (8인)
- Front(4인) - View별 필요기능 구현
- Back(3인) - Server DB 생성 및 데이터 구조 작업
- Design(2인) - View별 레이아웃 설정, 앱 아이콘, Main Theme Color 등

#### 세부 추진과정 
`해커톤(1일)`
   - 앱 아이디어 브레인 스토밍 ➟ ADS 및 페르소나 설정 ➟ 역할별 팀 구성 ➟ 최종 목표설정 ➟ 최소한의 UI 및 기능구현

`프로젝트(4주)`
  - UIScreen을 통한 디바이스 별 레이아웃 통일 외 View별 기능강화, Server 사용량 감축, 디자인 및 홍보물 제작

#### 앱 출시 및 사후관리(진행중)
  - 2022.02.06 / Apple Store 등록 (ver1.0)
  - 2022.02.11 / 로그인 및 Server fetch 버그 수정 (ver1.0.1)
  - 2022.02.13 / System Font, 일부 디바이스 별 레이아웃 문제 해결 (ver1.0.2)
        

### 2-2. 담당 기능 및 역할
`암기장 작성 및 수정 - CRUD 기능 구현`
  - 암기장 생성(카테고리, 제목 외) 및 삭제
  - 단어(word) 추가, 단어 리스트 확인 (UIWindowScene, UITapGestureRecognizer 활용, 사용자 친화적 UI/UX 도모)
  - Server와 연동되지 않는 Local Data -> CoreData로의 데이터 구조 전환

`공식 페이지 제작(Notion)`
  - 소개 페이지 전반에 걸친 소개글 작성, 디자인 개선
  - 이용약관 및 개인정보 처리방침 작성, 고지



### 2-3. 주요기능

#### 과학적이고 신뢰있는 방식을 통해 효율적인 암기기능 구현
- 암기곡선에 따른 학습 실패경험을 타파하고자, 규칙적인 `4단계 학습 루틴`을 제공
- 복습 시간에 맞게 `주기적인 알림(Local Notification)`을 발송함
    
|<img src="https://user-images.githubusercontent.com/107039500/217727221-68055c6a-a421-492e-ab0d-dfbf99fd44a1.png"></img>|<img src="https://user-images.githubusercontent.com/107039500/217727242-6c92ac9d-2397-4601-8142-e42a6895c9a3.png"></img>|<img src="https://user-images.githubusercontent.com/107039500/217727247-05dd98aa-d45b-4fce-b2dc-b4706aeeca9f.png"></img>|
|:-:|:-:|:-:|
|`나의 단어장`|`학습화면`|`복습알림`|

<br>

#### 단순한 영단어 암기 No! 기초상식부터 속담, 한국사 등 다양한 유형의 암기를 지원
- 시사, 상식, IT, 한국사, 수학공식 부터 자주 잊어버리기 쉬운 모든 것들을 자유롭게 암기
- 사용자의 동기부여를 위해, 학습 완료 시 `스탬프`를 제공, 동기부여를 강화함

|<img src="https://user-images.githubusercontent.com/107039500/217727233-1c8b3132-1db6-4211-85fd-299292176145.png"></img>|<img src="https://user-images.githubusercontent.com/107039500/217728556-741c396c-845a-41dd-8742-039087da6df0.png"></img>|<img src="https://user-images.githubusercontent.com/107039500/217728115-29ca0017-dbfe-4b02-8d2e-88a374edb494.png"></img>|
|:-:|:-:|:-:|
|`유형선택`|`시사상식`|`영단어 학습`|

<br>

#### 암기장 마켓기능을 통해 나만의 단어장을 공유하고, 타인과 함께 성장할 기회를 제공
- 학습을 완료한 내 단어장을 `마켓 등록`하거나, 후기(리뷰) 작성 가능
- `적립 포인트` 시스템을 활용, 유익한 암기장을 구매하고 학습하도록 유도함

|<img src="https://user-images.githubusercontent.com/107039500/217727241-e310aec4-ed3b-4e84-9d74-12ba88fce932.png"></img>|<img src="https://user-images.githubusercontent.com/107039500/217727239-16a7dfdf-d605-4ec2-8102-605fdaf24f2e.png"></img>|<img src="https://user-images.githubusercontent.com/107039500/217727244-cfbf8a9c-c257-40a0-807e-4237b532b153.png"></img>|
|:-:|:-:|:-:|
|`마켓`|`암기장 구매`|`암기장 판매`|

<br>

## 3. 자체 피드백 외 기타사항
### 3-1. 프로젝트 과정 중 느낀점
#### 긍정적인 부분

`앱이 필요로 하는 필수 기능(Front 및 Server 구축)을 단기간 내 구축할 수 있었던 좋은 기회`
  - 기획단계에서부터 주어진 시간 내 실현 가능한 소위의 ‘작업의 파이’를 설정하는 단계가 주요했음
  - 이는, 팀원간의 소통과 의논과정에서 나온 의견들을 ‘기록’하고 ‘실천’하는 과정이 큰 도움이 됨

`다양한 프로젝트 아키텍쳐를 활용, 기존에 작업했던 앱보다 높은 퀄리티와 완성도의 앱을 구현`
  - Apple, Kakaotalk, Google 등 다양한 SNS 로그인 기능을 구현함
  - 특히, 과도하게 높은 Server 사용량을 줄이기 위해, `CoreData`를 도입, 최소 10%의 감소를 이뤄냄
  - 2월 Server DB 사용량(CoreData 적용 후, 미 출시 기간보다 이후 기간에 사용한 사용량이 현저히 적어짐)
  #### ![Untitled](https://github.com/onthelots/Projects/assets/107039500/bf38c01b-f01d-4f68-bf32-2f3b98478114)

<br>

### 3-2. 개발환경 및 라이센스

#### 개발환경

iOS 16.0 이상
iPhone 14 Pro에서 최적화됨
가로모드 미지원, 다크모드 미지원

<br>

#### 라이센스

Apache License
Version 2.0 (January 2004)  
http://www.apache.org/licenses/

<br>

### 3-3. 활용기술 
#### 활용기술

Platforms

<img src="https://img.shields.io/badge/iOS-5A29E4?style=flat&logo=iOS&logoColor=white"/>  
    
Language & Tools

<img src="https://img.shields.io/badge/Xcode-147EFB?style=flat&logo=Xcode&logoColor=white"/> <img src="https://img.shields.io/badge/SwiftUI-2396F3?style=flat&logo=Swift&logoColor=white"/> <img src="https://img.shields.io/badge/Swift-F05138?style=flat&logo=swift&logoColor=white"/> <img src="https://img.shields.io/badge/Firebase-FFCA28?style=flat&logo=Firebase&logoColor=white"/> <img src="https://img.shields.io/badge/Figma-F24E1E?style=flat&logo=Figma&logoColor=white"/>
 
<br>

### 3-4. 프로젝트 참여자
#### 프로젝트 참여자
|  염성필  <br/>[@strongyeom](https://github.com/strongyeom) | 진준호 <br/> [@jincode93](https://github.com/jincode93) | 이종현 <br/> [@JongHyunLee84](https://github.com/JongHyunLee84) |  진태영 <br/>[@elisha0103](https://github.com/elisha0103) |
| :----------------------------------------------------------: | :---------------------------------------------: | :------: | :-------------------------------------------------: |
|<img src="https://avatars.githubusercontent.com/u/101084872?v=4" width=200> | <img src="https://avatars.githubusercontent.com/u/111134273?v=4" width=200> | <img src="https://avatars.githubusercontent.com/u/112399028?v=4" width=200>  | <img src="https://avatars.githubusercontent.com/u/41459466?v=4" width=200> |

|  임재혁  <br/>[@onthelots](https://github.com/onthelots) | 윤현기 <br/> [@Yoon-Hyeongi](https://github.com/Yoon-Hyeongi) | 김혜지 <br/> [@hyehyehye99](https://github.com/hyehyehye99) |  전근섭 <br/>[@JKSeub](https://github.com/JKSeub) |
| :----------------------------------------------------------: | :---------------------------------------------: | :------: | :-------------------------------------------------: |
|<img src="https://avatars.githubusercontent.com/u/107039500?v=4" width=200> | <img src="https://avatars.githubusercontent.com/u/84693317?v=4" width=200> | <img src="https://avatars.githubusercontent.com/u/107675865?v=4" width=200>  | <img src="https://avatars.githubusercontent.com/u/86897750?v=4" width=200> |

---
[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2FAPPSCHOOL1-REPO%2Ffinalproject-memorizing&count_bg=%2379C83D&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=hits&edge_flat=false)](https://hits.seeyoufarm.com)
