# M4ro3 - Your All-in-One Transportation Companion

M4ro3 (مشروع) is a Flutter-based mobile application designed to simplify your transportation experience.  It's more than just a fare calculator; it's a tool to help you manage your journey and make the most of your time.

## Features

*   **Fare Calculator:**  Easily calculate transportation costs with a dedicated tool.  Input the necessary details, and M4ro3 will provide you with the estimated fare.
*   **Tasbeeh Counter:**  Make your travel time more meaningful with a built-in digital Tasbeeh counter.  Keep track of your Zikr (remembrance of Allah) while on the go.
*   **Integrated Calculator:**  Need to do some quick calculations?  M4ro3 includes a fully functional calculator, eliminating the need to switch between apps.

## Screenshots

**Fare Calculator:**

<img src="https://github.com/user-attachments/assets/31c005a6-634d-4741-91d6-928385314b65" width="250">

*   Input fields for:
    *   Individual Fare (أجره الفرد)
    *   Total Amount Collected (المبلغ اللي جمعته)
    *   Number of People (عدد الاشخاص)
*   Calculates and displays:
    *   Expected Total Amount (المبلغ الكلي المتوقع)
    *   Excess Amount (مبلغ زائد عن الحاجة)
    *   Required Amount (مبلغ بحاجة إليه)

**Calculator:**

<img src="https://github.com/user-attachments/assets/e144f876-248d-4a1f-a274-b2d6c97fb95d" width="250">

*   Standard calculator layout with:
    *   Clear (C)
    *   Delete (Del)
    *   Percentage (%)
    *   Division (/)
    *   Multiplication (X)
    *   Addition (+)
    *   Subtraction (-)
    *   Equals (=)
    *   Decimal point (.)
    *   Number keys (0-9)

**Tasbeeh Counter:**

<img src="https://github.com/user-attachments/assets/f1e913d2-592e-4e3d-92a1-708b3a481227" width="250">

*   Large, clear display of the count.
*   "Tasbeeh" (تسبيحة) button to increment the count.
*   "Reset" (تصفير) button to clear the count.

## Getting Started (For Developers)

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

**Prerequisites**

*   **Flutter SDK:**  Make sure you have the Flutter SDK installed and properly configured on your system.  See the official Flutter documentation for installation instructions: [https://docs.flutter.dev/get-started/install](https://docs.flutter.dev/get-started/install)
*   **Dart SDK:**  The Dart SDK is usually bundled with the Flutter SDK.
*   **An IDE (Recommended):**  Visual Studio Code (with the Flutter and Dart extensions) or Android Studio are recommended for development.
*   **An Emulator or Physical Device:** You'll need either an Android emulator, an iOS simulator, or a physical device connected to your computer to run the app.

**Cloning the Repository**

1.  Open your terminal or command prompt.
2.  Navigate to the directory where you want to store the project.
3.  Clone the repository using Git (replace `[your-repository-url]` with the actual URL of your repository):

    ```bash
    git clone https://github.com/ElHbrouk/Ma4ro3.git
    ```

**Running the App**

1.  Open the project in your IDE.
2.  Make sure you have an emulator or physical device connected.
3.  Run the app using the following command in your terminal (from the project's root directory):

    ```bash
    flutter run
    ```

    Alternatively, you can use the "Run" or "Debug" options in your IDE.

**Building the App**

To build a release version of the app, you can use the following commands:

*   **Android (APK):**

    ```bash
    flutter build apk
    ```

*   **Android (App Bundle):**

    ```bash
    flutter build appbundle
    ```

*   **iOS (IPA):** (Requires a macOS machine and proper iOS development setup)

    ```bash
    flutter build ipa
    ```
