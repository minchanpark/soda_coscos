# SODA-CosCos: 맞춤형 데이트 코스 추천 및 생성 Flutter 애플리케이션

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Firebase](https://img.shields.io/badge/Firebase-FFCA28?style=for-the-badge&logo=firebase&logoColor=black)

## 🚀 시작하기

### 📋 사전 요구사항
- Flutter SDK 3.5.4 이상
- Dart SDK
- Android Studio / Xcode (모바일 배포 시)
- Firebase 프로젝트

### 🔥 Firebase 설정

**중요: Firebase 설정 파일은 보안상 Git에 포함되지 않습니다.**

1. **템플릿 파일 복사**
   ```bash
   cp lib/firebase_options.dart.template lib/firebase_options.dart
   ```

2. **Firebase 콘솔에서 설정값 확인**
   - [Firebase Console](https://console.firebase.google.com/)에서 프로젝트 선택
   - 프로젝트 설정 → 일반 → 앱 선택 → Firebase SDK 구성

3. **설정값 교체**
   `lib/firebase_options.dart` 파일에서 다음 값들을 실제 값으로 교체:
   ```dart
   // Web
   apiKey: 'YOUR_WEB_API_KEY',
   appId: 'YOUR_WEB_APP_ID',
   
   // iOS  
   apiKey: 'YOUR_IOS_API_KEY',
   appId: 'YOUR_IOS_APP_ID',
   iosBundleId: 'com.example.yourapp',
   
   // Android
   apiKey: 'YOUR_ANDROID_API_KEY', 
   appId: 'YOUR_ANDROID_APP_ID',
   
   // 공통
   messagingSenderId: 'YOUR_MESSAGING_SENDER_ID',
   projectId: 'YOUR_PROJECT_ID',
   storageBucket: 'YOUR_PROJECT_ID.appspot.com',
   ```

### 📱 실행 방법

```bash
# 1. 저장소 클론
git clone https://github.com/minchanpark/soda_coscos.git
cd soda_coscos

# 2. 의존성 설치
flutter pub get

# 3. Firebase 설정 (위 단계 완료 후)
# lib/firebase_options.dart 파일 설정

# 4. 앱 실행
flutter run
```

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

### 📱 화면 구조 (UI Flow)
SODA-CosCos는 사용자 친화적인 경험을 제공하기 위해 다음과 같은 주요 화면들로 구성되어 있습니다. 각 화면은 사용자가 맞춤형 데이트 코스를 탐색하고 생성하며, 개인화된 정보를 관리할 수 있도록 설계되었습니다.

1. 홈 화면 (Home Page)
주요 기능: 앱의 시작점이며, 추천 코스, 인기 장소 등의 요약 정보를 제공합니다.
이동 경로: 앱 실행 시 기본 화면.

2. 코스 상세 페이지 (Card Tab Page)
주요 기능: 특정 코스의 상세 정보를 보여줍니다. 포함된 장소, 총 비용, 테마 등을 확인할 수 있습니다.
이동 경로: 홈 화면이나 검색 결과에서 특정 코스 선택 시.

3. 나만의 코스 생성 페이지 (Custom Page)
주요 기능: 사용자가 직접 원하는 장소들을 조합하여 새로운 코스를 만들고, 실시간으로 예상 비용을 확인할 수 있습니다.
이동 경로: 홈 화면 또는 마이 페이지 등에서 '코스 만들기' 옵션 선택 시.

4. 마이 페이지 (My Page)
주요 기능: 사용자의 개인 정보, 즐겨찾는 장소 및 코스('내 컬렉션'), 생성한 코스 목록 등을 관리합니다.
이동 경로: 하단 내비게이션 바 또는 메뉴에서 '마이 페이지' 선택 시.

5. 문화 정보 페이지 (Culture Page)
주요 기능: 현재 진행 중이거나 예정된 다양한 문화 행사 정보를 제공하여 사용자의 여가 활동 선택을 돕습니다.
이동 경로: 하단 내비게이션 바 또는 메뉴에서 '문화 정보' 선택 시.

6. 장소 검색 페이지 (Search Page - 가정)
주요 기능: 사용자가 특정 장소를 검색하고, 상세 정보를 조회할 수 있도록 합니다.
이동 경로: 홈 화면의 검색 바 또는 코스 생성 페이지 내 장소 추가 시.

### 📞 문의

본 프로젝트에 대한 문의사항이 있으시면 언제든지 alscksqkr13@gmail.com으로 연락 주세요.

---
**박민찬 | 개발자 포트폴리오**
[GitHub Profile Link](https://github.com/minchanpark)
