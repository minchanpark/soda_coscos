soda_coscos: 맞춤형 코스 추천 및 제작 앱
soda_coscos는 사용자가 다양한 테마의 데이트 및 활동 코스를 탐색하고, 자신만의 맞춤 코스를 직접 제작하며 공유할 수 있는 Flutter 기반의 모바일 애플리케이션입니다. Firebase를 백엔드로 활용하여 장소, 코스, 사용자 찜 목록 등 데이터를 실시간으로 관리합니다.

🎯 주요 기능 (Key Features)
코스 추천 및 탐색:
'스트레스 해소', '비 오는 날' 등 특정 테마를 가진 미리 정의된 코스를 제공합니다.
가격대별 필터링 기능: 슬라이더를 이용해 예산에 맞는 코스를 쉽게 찾을 수 있습니다.
정렬 기능: '낮은 가격순', '높은 가격순'으로 코스를 정렬하여 볼 수 있습니다.
장소 검색:
맛집, 카페, 놀거리 등 카테고리별로 장소를 탐색할 수 있습니다.
각 장소의 상세 정보, 메뉴, 위치 등을 확인할 수 있습니다.
장소 역시 가격순으로 정렬이 가능합니다.
나만의 코스 커스텀:
사용자가 직접 코스 이름을 설정하고, 원하는 장소(맛집, 카페, 놀거리)들을 추가하여 자신만의 코스를 만들 수 있습니다.
코스에 포함된 장소들의 총 예상 비용이 자동으로 계산되어 실시간으로 표시됩니다.
완성된 커스텀 코스는 '마이페이지'에 저장하여 언제든지 다시 확인할 수 있습니다.
찜 기능 (My Collection):
마음에 드는 장소나 코스를 '찜'하여 '나의 찜' 페이지에 보관할 수 있습니다.
찜한 장소와 코스를 분리하여 확인할 수 있습니다.
문화 정보:
'진행중인 행사'와 '예정된 행사' 탭으로 나누어 다양한 문화 정보를 제공합니다.
Firebase 연동:
Firestore를 사용하여 restaurants, cafes, entertainment, course 등의 장소 및 코스 정보를 관리합니다.
사용자가 찜한 목록(favorite)과 직접 만든 커스텀 코스(collection) 정보도 Firestore에 저장됩니다.
🏗️ 기술 스택 (Tech Stack)
구분	기술	파일
Framework	Flutter	pubspec.yaml
State Management	Provider	pubspec.yaml, lib/provider/appstate_provider.dart
Backend	Firebase (Firestore, Storage)	pubspec.yaml, firebase.json, lib/firebase_options.dart
UI & Icons	Material Design, Cupertino Icons, FluentUI, MdiIcons	pubspec.yaml
Utilities	intl (국제화/숫자 포맷팅)	pubspec.yaml
Platforms	Android, iOS, Web, macOS, Linux, Windows	firebase.json, linux/CMakeLists.txt, windows/CMakeLists.txt
📂 프로젝트 구조
애플리케이션은 기능별로 명확하게 분리된 디렉토리 구조를 따릅니다.

lib
├── app_color/          # 앱 전역에서 사용되는 색상 정의
├── firestore_file/     # Firestore 컬렉션별 서비스 클래스
├── page_folder/        # 각 화면(페이지)별 UI 및 로직
│   ├── card_in_course/ # 코스 카드 위젯
│   ├── card_tab_page/  # 코스 상세 정보 페이지
│   ├── home_page/      # 홈 (장소 및 코스 탭)
│   ├── custompage/     # 커스텀 코스 생성 페이지
│   ├── my_page/        # 마이페이지 (찜, 나의 커스텀)
│   └── culture_page.dart # 문화 정보 페이지
├── provider/           # Provider 상태 관리 클래스
│   ├── appstate_provider.dart # 앱 전역 상태 및 커스텀 코스 관리
│   └── trip_provider.dart     # 커스텀 코스(Trip) 데이터 모델
└── main.dart           # 앱 시작점 및 라우팅 설정
🚀 시작하기 (Getting Started)
프로젝트를 로컬 환경에서 실행하려면 다음 단계를 따르세요.

1. 프로젝트 클론:

Bash
git clone https://github.com/minchanpark/soda_coscos.git
cd soda_coscos
2. Flutter 종속성 설치:

Bash
flutter pub get
3. 애플리케이션 실행:

Bash
flutter run
참고: 이 프로젝트는 Firebase와 연동되므로, 실행을 위해서는 android/app/google-services.json 파일과 lib/firebase_options.dart 파일에 포함된 Firebase 프로젝트 구성 정보가 유효해야 합니다.
