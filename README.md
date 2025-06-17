# SODA-CosCos: 맞춤형 데이트 코스 추천 및 생성 Flutter 애플리케이션

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Firebase](https://img.shields.io/badge/Firebase-FFCA28?style=for-the-badge&logo=firebase&logoColor=black)

### 🚀 프로젝트 소개

SODA-CosCos는 사용자에게 맞춤형 데이트 및 활동 코스를 제안하고 직접 생성할 수 있도록 돕는 Flutter 기반의 모바일 애플리케이션입니다. Firebase를 백엔드로 활용하여 장소, 코스, 사용자 즐겨찾기 등을 실시간으로 관리합니다. 본 프로젝트는 사용자 경험을 최우선으로 고려하여 다양한 테마와 가격대의 코스를 추천하고, 사용자가 원하는 대로 코스를 구성하며, 문화 행사 정보까지 제공하여 풍성한 여가 활동을 지원합니다.

### ✨ 주요 기능

* **코스 추천 및 탐색**: 테마별, 가격대별로 추천 코스를 제공하여 사용자 선택의 폭을 넓힙니다.
* **장소 검색 및 상세 정보**: 다양한 장소에 대한 상세 정보를 제공하여 사용자가 쉽게 정보를 얻을 수 있도록 돕습니다.
* **나만의 코스 생성**: 사용자가 원하는 장소를 조합하여 자신만의 코스를 만들고, 자동으로 예상 비용을 계산하여 보여줍니다.
* **"내 컬렉션"**: 마음에 드는 장소나 코스를 저장하여 언제든지 다시 볼 수 있는 즐겨찾기 기능을 제공합니다.
* **문화 정보 제공**: 진행 중인 행사 및 예정된 문화 행사에 대한 정보를 제공하여 사용자의 문화생활을 풍요롭게 합니다.

### 🛠️ 기술 스택

* **프론트엔드**: Flutter (Dart)
* **백엔드**: Firebase (Firestore, Authentication)
* **상태 관리**: Provider
* **UI/UX**: Material Design 기반의 깔끔하고 직관적인 인터페이스

### 📂 프로젝트 구조

### 🚀 시작하기

1.  **레포지토리 클론**:
    ```bash
    git clone [https://github.com/minchanpark/soda_coscos.git](https://github.com/minchanpark/soda_coscos.git)
    cd soda_coscos
    ```
2.  **Flutter 종속성 설치**:
    ```bash
    flutter pub get
    ```
3.  **Firebase 설정**:
    * Firebase 프로젝트를 생성하고, Android 및 iOS 앱을 등록합니다.
    * `google-services.json` (Android) 및 `GoogleService-Info.plist` (iOS) 파일을 프로젝트의 올바른 위치에 추가합니다.
    * Firestore 데이터베이스를 설정하고 필요한 컬렉션(예: `places`, `courses`)을 생성합니다.
    * Firebase Authentication을 활성화합니다.
4.  **앱 실행**:
    ```bash
    flutter run
    ```

### 📞 문의

본 프로젝트에 대한 문의사항이 있으시면 언제든지 alscksqkr13@gmail.com으로 연락 주세요.

---
**박민찬 | 개발자 포트폴리오**
[GitHub Profile Link](https://github.com/minchanpark)
