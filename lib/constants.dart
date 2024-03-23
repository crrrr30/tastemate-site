// ignore_for_file: non_constant_identifier_names, constant_identifier_names

import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const API_BASE_URL = 'https://backend.tastemate.pro/';
const GET_DOWNLOAD_URL = 'api_backend/get_download_url/';

EdgeInsets get PAGE_PADDING => 1.sw > 870
    ? EdgeInsets.symmetric(horizontal: 0.05.sw)
    : EdgeInsets.symmetric(horizontal: 24.r);
final LIST_VIEW_SEPARATOR_HEIGHT = SizedBox(height: 24.r);

const TRANSITION_ANIMATION_DURATION = Duration(milliseconds: 200);

const GRAY_COLOR = Color(0xFFD9D9D9);

const PRIVARY_POLICY = """
<h1>Privacy Policy</h1>
<p><br></p>
<p><strong>Last updated&nbsp;March 23, 2024</strong></p>
<p><br></p>
<p>This privacy policy for TasteMate describes how and why the developers of TasteMate ("<strong>we</strong>," "<strong>us</strong>," or "<strong>our</strong>") might collect, store, use, and/or share ("<strong>process</strong>") your information when you use our services ("<strong>Services</strong>"), such as when you:</p>
<ul>
  <li>Download and use&nbsp;our mobile application&nbsp;(TasteMate - Personalized Diet),&nbsp;or any other application of ours that links to this privacy policy</li>
</ul>
<ul>
  <li>Engage with us in other related ways, including any sales, marketing, or events</li>
</ul>
<p><strong>Questions or concerns?&nbsp;</strong>Reading this privacy policy will help you understand your privacy rights and choices. By using our Services, you agree to our policies and practices as outlined in this Notice.</p>
<p><br></p>
<h2>Summary of Key Points</h2>
<p><br></p>
<p><strong>What personal information do we process?</strong>&nbsp;When you visit, use, or navigate our Services, we may process personal information depending on how you interact with us and the Services, the choices you make, and the products and features you use.</p>
<p><br></p>
<p><strong>Do we process any sensitive personal information?</strong>&nbsp;We may process sensitive personal information when necessary with your consent or as otherwise permitted by applicable law.</p>
<p><br></p>
<p><strong>Do we receive any information from third parties?</strong>&nbsp;We may receive information from public databases, marketing partners, social media platforms, and other outside sources.</p>
<p><br></p>
<p><strong>How do we process your information?</strong>&nbsp;We process your information to provide, improve, and administer our Services, communicate with you, for security and fraud prevention, and to comply with law. We may also process your information for other purposes with your consent. We process your information only when we have a valid legal reason to do so.</p>
<p><br></p>
<p><strong>In what situations and with which&nbsp;types of&nbsp;parties do we share personal information?</strong>&nbsp;We may share information in specific situations and with specific&nbsp;categories of&nbsp;third parties.</p>
<p><br></p>
<p><strong>How do we keep your information safe?</strong>&nbsp;We have&nbsp;organizational&nbsp;and technical processes and procedures in place to protect your personal information. However, no electronic transmission over the internet or information storage technology can be guaranteed to be 100% secure, so we cannot promise or guarantee that hackers, cybercriminals, or other&nbsp;unauthorized&nbsp;third parties will not be able to defeat our security and improperly collect, access, steal, or modify your information.</p>
<p><br></p>
<p><strong>What are your rights?</strong>&nbsp;Depending on where you are located geographically, the applicable privacy law may mean you have certain rights regarding your personal information.</p>
<p><br></p>
<p><strong>How do you exercise your rights?</strong>&nbsp;The easiest way to exercise your rights is by&nbsp;submitting a&nbsp;data subject access request, or by contacting us. We will consider and act upon any request in accordance with applicable data protection laws.</p>
<p><br></p>
<p>Want to learn more about what we do with any information we collect?&nbsp;Review the privacy policy in full.</p>
<p><br></p>
<h2>Table of Contents</h2>
<p><br></p>
<p>1. What Information Do We Collect?</p>
<p>2. How Do We Process Your Information?</p>
<p>3. When and with Whom Do We Share Your Personal Information?</p>
<p>4. What Is Our Stance on Third-Party Websites?</p>
<p>5. Do We Use Cookies and Other Tracking Technologies?</p>
<p>6. How Do We Handle Your Social Logins?</p>
<p>7. How Long Do We Keep Your Information?</p>
<p>8. How Do We Keep Your Information Safe?</p>
<p>9. Do We Collect Information from Minors?</p>
<p>10. What Are Your Privacy Rights?</p>
<p>11. Controls for Do-Not-Track Features</p>
<p>12. Do United States Residents Have Specific Privacy Rights?</p>
<p>13. Do We Make Updates to This Notice?</p>
<p>14. How Can You Contact Us about This Notice?</p>
<p>15. How Can You Review, Update, or Delete the Data We Collect from You?</p>
<p><br></p>
<h2>1. What Information Do We Collect?</h2>
<p><br></p>
<p><strong>Personal information you disclose to us</strong></p>
<p><br></p>
<p><strong><em>In Short:&nbsp;</em></strong><em>We collect personal information that you provide to us.</em></p>
<p><br></p>
<p>We collect personal information that you voluntarily provide to us when you&nbsp;register on the Services,&nbsp;express an interest in obtaining information about us or our products and Services, when you participate in activities on the Services, or otherwise when you contact us.</p>
<p><br></p>
<p><strong>Personal Information Provided by You.</strong>&nbsp;The personal information that we collect depends on the context of your interactions with us and the Services, the choices you make, and the products and features you use. The personal information we collect may include the following:</p>
<ul>
  <li>names</li>
</ul>
<ul>
  <li>phone numbers</li>
</ul>
<ul>
  <li>email addresses</li>
</ul>
<ul>
  <li>usernames</li>
</ul>
<ul>
  <li>passwords</li>
</ul>
<p><br></p>
<p><strong>Sensitive Information.</strong>&nbsp;When necessary, with your consent or as otherwise permitted by applicable law, we process the following categories of sensitive information:</p>
<ul>
  <li>health data</li>
</ul>
<p><br></p>
<p><strong>Social Media Login Data.&nbsp;</strong>We may provide you with the option to register with us using your existing social media account details, like your Facebook, Twitter, or other social media account. If you choose to register in this way, we will collect the information described in the section called&nbsp;"How Do We Handle Your Social Logins?"&nbsp;below.</p>
<p><br></p>
<p><strong style="font-size: 14px;">Application Data.</strong>&nbsp;If you use our application(s), we also may collect the following information if you choose to provide us with access or permission:</p>
<ul>
  <li><em>Push Notifications.</em>&nbsp;We may request to send you push notifications regarding your account or certain features of the application(s). If you wish to opt out from receiving these types of communications, you may turn them off in your device's settings.</li>
</ul>
<p>This information is primarily needed to maintain the security and operation of our application(s), for troubleshooting, and for our internal analytics and reporting purposes.</p>
<p><br></p>
<p>All personal information that you provide to us must be true, complete, and accurate, and you must notify us of any changes to such personal information.</p>
<p><br></p>
<p><strong>Information automatically collected</strong></p>
<p><br></p>
<p><strong><em>In Short:&nbsp;</em></strong><em>Some information — such as your Internet Protocol (IP) address and/or browser and device characteristics — is collected automatically when you visit our Services.</em></p>
<p><br></p>
<p>We automatically collect certain information when you visit, use, or navigate the Services. This information does not reveal your specific identity (like your name or contact information) but may include device and usage information, such as your IP address, browser and device characteristics, operating system, language preferences, referring URLs, device name, country, location, information about how and when you use our Services, and other technical information. This information is primarily needed to maintain the security and operation of our Services, and for our internal analytics and reporting purposes.</p>
<p><br></p>
<p>Like many businesses, we also collect information through cookies and similar technologies.</p>
<p><br></p>
<p>The information we collect includes:</p>
<ul>
  <li><em>Log and Usage Data.</em>&nbsp;Log and usage data is service-related, diagnostic, usage, and performance information our servers automatically collect when you access or use our Services and which we record in log files. Depending on how you interact with us, this log data may include your IP address, device information, browser type, and settings and information about your activity in the Services&nbsp;(such as the date/time stamps associated with your usage, pages and files viewed, searches, and other actions you take such as which features you use), device event information (such as system activity, error reports (sometimes called&nbsp;"crash dumps"), and hardware settings).</li>
</ul>
<ul>
  <li><em>Device Data.</em>&nbsp;We collect device data such as information about your computer, phone, tablet, or other device you use to access the Services. Depending on the device used, this device data may include information such as your IP address (or proxy server), device and application identification numbers, location, browser type, hardware model, Internet service provider and/or mobile carrier, operating system, and system configuration information.</li>
</ul>
<ul>
  <li><em>Location Data.</em>&nbsp;We collect location data such as information about your device's location, which can be either precise or imprecise. How much information we collect depends on the type and settings of the device you use to access the Services. For example, we may use GPS and other technologies to collect geolocation data that tells us your current location (based on your IP address). You can opt out of allowing us to collect this information either by refusing access to the information or by disabling your Location setting on your device. However, if you choose to opt out, you may not be able to use certain aspects of the Services.</li>
</ul>
<p><br></p>
<p><strong>Information collected from other sources</strong></p>
<p><br></p>
<p><strong><em>In Short:&nbsp;</em></strong><em>We may collect limited data from public databases, marketing partners,&nbsp;social media platforms,&nbsp;and other outside sources.</em></p>
<p><br></p>
<p>In order to enhance our ability to provide relevant marketing, offers, and services to you and update our records, we may obtain information about you from other sources, such as public databases, joint marketing partners, affiliate programs, data providers,&nbsp;social media platforms,&nbsp;and from other third parties. This information includes mailing addresses, job titles, email addresses, phone numbers, intent data (or user&nbsp;behavior&nbsp;data), Internet Protocol (IP) addresses, social media profiles, social media URLs, and custom profiles, for purposes of targeted advertising and event promotion.&nbsp;If you interact with us on a social media platform using your social media account (e.g.,&nbsp;Facebook or Twitter), we receive personal information about you such as your name, email address, and gender. Any personal information that we collect from your social media account depends on your social media account's privacy settings.</p>
<p><br></p>
<h2>2. How Do We Process Your Information?</h2>
<p><br></p>
<p><strong><em>In Short:&nbsp;</em></strong><em>We process your information to provide, improve, and administer our Services, communicate with you, for security and fraud prevention, and to comply with law. We may also process your information for other purposes with your consent.</em></p>
<p><br></p>
<p><strong>We process your personal information for a variety of reasons, depending on how you interact with our Services, including:</strong></p>
<ul>
  <li><strong>To facilitate account creation and authentication and otherwise manage user accounts.&nbsp;</strong>We may process your information so you can create and log in to your account, as well as keep your account in working order.</li>
</ul>
<ul>
  <li><strong>To deliver and facilitate delivery of services to the user.&nbsp;</strong>We may process your information to provide you with the requested service.</li>
</ul>
<ul>
  <li><strong>To respond to user inquiries/offer support to users.&nbsp;</strong>We may process your information to respond to your inquiries and solve any potential issues you might have with the requested service.</li>
</ul>
<ul>
  <li><strong>To post testimonials.</strong>&nbsp;We post testimonials on our Services that may contain personal information.</li>
</ul>
<ul>
  <li><strong style="font-size: 14px;">To protect our Services.</strong>&nbsp;We may process your information as part of our efforts to keep our Services safe and secure, including fraud monitoring and prevention.</li>
</ul>
<ul>
  <li><strong style="font-size: 14px;">To evaluate and improve our Services, products, marketing, and your experience.</strong>&nbsp;We may process your information when we believe it is necessary to identify usage trends, determine the effectiveness of our promotional campaigns, and to evaluate and improve our Services, products, marketing, and your experience.</li>
</ul>
<ul>
  <li><strong>To comply with our legal obligations.</strong>&nbsp;We may process your information to comply with our legal obligations, respond to legal requests, and exercise, establish, or defend our legal rights.</li>
</ul>
<p><br></p>
<h2>3. When and with Whom Do We Share Your Personal Information?</h2>
<p><br></p>
<p><strong><em>In Short:</em></strong><em>&nbsp;We may share information in specific situations described in this section and/or with the following&nbsp;categories of&nbsp;third parties.</em></p>
<p><br></p>
<p><strong>Vendors, Consultants, and Other Third-Party Service Providers.</strong>&nbsp;We may share your data with third-party vendors, service providers, contractors, or agents ("<strong>third parties</strong>") who perform services for us or on our behalf and require access to such information to do that work.&nbsp;The&nbsp;categories of&nbsp;third parties we may share personal information with are as follows:</p>
<ul>
  <li>Ad Networks</li>
</ul>
<ul>
  <li>Social Networks</li>
</ul>
<ul>
  <li>Sales &amp; Marketing Tools</li>
</ul>
<ul>
  <li>Performance Monitoring Tools</li>
</ul>
<ul>
  <li>Payment Processors</li>
</ul>
<ul>
  <li>Data Analytics Services</li>
</ul>
<p><br></p>
<p>We&nbsp;also&nbsp;may need to share your personal information in the following situations:</p>
<ul>
  <li><strong>Business Transfers.</strong>&nbsp;We may share or transfer your information in connection with, or during negotiations of, any merger, sale of company assets, financing, or acquisition of all or a portion of our business to another company.</li>
</ul>
<ul>
  <li><strong>Affiliates.&nbsp;</strong>We may share your information with our affiliates, in which case we will require those affiliates to&nbsp;honor&nbsp;this privacy policy. Affiliates include our parent company and any subsidiaries, joint venture partners, or other companies that we control or that are under common control with us.</li>
</ul>
<ul>
  <li><strong style="font-size: 14px;">Business Partners.</strong>&nbsp;We may share your information with our business partners to offer you certain products, services, or promotions.</li>
</ul>
<p><br></p>
<h2>4. What Is Our Stance on Third-Party Websites?</h2>
<p><br></p>
<p><strong><em>In Short:</em></strong><em>&nbsp;We are not responsible for the safety of any information that you share with third parties that we may link to or who advertise on our Services, but are not affiliated with, our Services.</em></p>
<p><br></p>
<p>The Services&nbsp;may link to third-party websites, online services, or mobile applications and/or contain advertisements from third parties that are not affiliated with us and which may link to other websites, services, or applications. Accordingly, we do not make any guarantee regarding any such third parties, and we will not be liable for any loss or damage caused by the use of such third-party websites, services, or applications. The inclusion of a link towards a third-party website, service, or application does not imply an endorsement by us. We cannot guarantee the safety and privacy of data you provide to any third parties. Any data collected by third parties is not covered by this privacy policy. We are not responsible for the content or privacy and security practices and policies of any third parties, including other websites, services, or applications that may be linked to or from the Services. You should review the policies of such third parties and contact them directly to respond to your questions.</p>
<p><br></p>
<h2>5. Do We Use Cookies and Other Tracking Technologies?</h2>
<p><br></p>
<p><strong><em>In Short:</em></strong><em>&nbsp;We may use cookies and other tracking technologies to collect and store your information.</em></p>
<p><br></p>
<p>We may use cookies and similar tracking technologies (like web beacons and pixels) to access or store information. Specific information about how we use such technologies and how you can refuse certain cookies is set out in our Cookie Notice.</p>
<p><br></p>
<h2>6. How Do We Handle Your Social Logins?</h2>
<p><br></p>
<p><strong><em>In Short:&nbsp;</em></strong><em>If you choose to register or log in to our Services using a social media account, we may have access to certain information about you.</em></p>
<p><br></p>
<p>Our Services offer you the ability to register and log in using your third-party social media account details (like your Facebook or Twitter logins). Where you choose to do this, we will receive certain profile information about you from your social media provider. The profile information we receive may vary depending on the social media provider concerned, but will often include your name, email address, friends list, and profile picture, as well as other information you choose to make public on such a social media platform.</p>
<p><br></p>
<p>We will use the information we receive only for the purposes that are described in this privacy policy or that are otherwise made clear to you on the relevant Services. Please note that we do not control, and are not responsible for, other uses of your personal information by your third-party social media provider. We recommend that you review their privacy policy to understand how they collect, use, and share your personal information, and how you can set your privacy preferences on their sites and apps.</p>
<p><br></p>
<h2>7. How Long Do We Keep Your Information?</h2>
<p><br></p>
<p><strong><em>In Short:&nbsp;</em></strong><em>We keep your information for as long as necessary to&nbsp;fulfill&nbsp;the purposes outlined in this privacy policy unless otherwise required by law.</em></p>
<p><br></p>
<p>We will only keep your personal information for as long as it is necessary for the purposes set out in this privacy policy, unless a longer retention period is required or permitted by law (such as tax, accounting, or other legal requirements).&nbsp;No purpose in this notice will require us keeping your personal information for longer than&nbsp;&nbsp;&nbsp;the period of time in which users have an account with us.&nbsp;</p>
<p><br></p>
<p>When we have no ongoing legitimate business need to process your personal information, we will either delete or&nbsp;anonymize&nbsp;such information, or, if this is not possible (for example, because your personal information has been stored in backup archives), then we will securely store your personal information and isolate it from any further processing until deletion is possible.</p>
<p><br></p>
<h2>8. How Do We Keep Your Information Safe?</h2>
<p><br></p>
<p><strong><em>In Short:&nbsp;</em></strong><em>We aim to protect your personal information through a system of&nbsp;organizational&nbsp;and technical security measures.</em></p>
<p><br></p>
<p>We have implemented appropriate and reasonable technical and&nbsp;organizational&nbsp;security measures designed to protect the security of any personal information we process. However, despite our safeguards and efforts to secure your information, no electronic transmission over the Internet or information storage technology can be guaranteed to be 100% secure, so we cannot promise or guarantee that hackers, cybercriminals, or other&nbsp;unauthorized&nbsp;third parties will not be able to defeat our security and improperly collect, access, steal, or modify your information. Although we will do our best to protect your personal information, transmission of personal information to and from our Services is at your own risk. You should only access the Services within a secure environment.</p>
<p><br></p>
<h2>9. Do We Collect Information from Minors?</h2>
<p><br></p>
<p><strong><em>In Short:</em></strong><em>&nbsp;We do not knowingly collect data from or market to&nbsp;children under 18 years of age.</em></p>
<p><br></p>
<p>We do not knowingly solicit data from or market to children under 18 years of age. By using the Services, you represent that you are at least 18 or that you are the parent or guardian of such a minor and consent to such minor dependent’s use of the Services. If we learn that personal information from users less than 18 years of age has been collected, we will deactivate the account and take reasonable measures to promptly delete such data from our records. If you become aware of any data we may have collected from children under age 18, please contact us at&nbsp;<a href="mailto:tastemate@proton.me" style="color: black;">tastemate@proton.me</a>.</p>
<p><br></p>
<h2>10. What Are Your Privacy Rights?</h2>
<p><br></p>
<p><strong><em>In Short:</em></strong><em>&nbsp;&nbsp;You may review, change, or terminate your account at any time.</em></p>
<p><br></p>
<p><strong>Withdrawing your consent:</strong>&nbsp;If we are relying on your consent to process your personal information,&nbsp;which may be express and/or implied consent depending on the applicable law,&nbsp;you have the right to withdraw your consent at any time. You can withdraw your consent at any time by contacting us by using the contact details provided in the section&nbsp;"How Can You Contact Us about This Notice?"&nbsp;below.</p>
<p><br></p>
<p>However, please note that this will not affect the lawfulness of the processing before its withdrawal nor,&nbsp;when applicable law allows,&nbsp;will it affect the processing of your personal information conducted in reliance on lawful processing grounds other than consent.</p>
<p><br></p>
<p><strong>Opting out of marketing and promotional communications:&nbsp;</strong>You can unsubscribe from our marketing and promotional communications at any time by&nbsp;clicking on the unsubscribe link in the emails that we send,&nbsp;replying&nbsp;"STOP" or "UNSUBSCRIBE"&nbsp;to the SMS messages that we send,&nbsp;or by contacting us using the details provided in the section&nbsp;"How Can You Contact Us about This Notice?"&nbsp;below. You will then be removed from the marketing lists. However, we may still communicate with you — for example, to send you service-related messages that are necessary for the administration and use of your account, to respond to service requests, or for other non-marketing purposes.</p>
<p><br></p>
<p><strong>Account Information</strong></p>
<p><br></p>
<p>If you would at any time like to review or change the information in your account or terminate your account, you can:</p>
<ul>
  <li>Contact us using the contact information provided.</li>
</ul>
<p><br></p>
<p>Upon your request to terminate your account, we will deactivate or delete your account and information from our active databases. However, we may retain some information in our files to prevent fraud, troubleshoot problems, assist with any investigations, enforce our legal terms and/or comply with applicable legal requirements.</p>
<p><br></p>
<p><strong>Cookies and similar technologies:</strong>&nbsp;Most Web browsers are set to accept cookies by default. If you prefer, you can usually choose to set your browser to remove cookies and to reject cookies. If you choose to remove cookies or reject cookies, this could affect certain features or services of our Services.&nbsp;You may also&nbsp;opt out of interest-based advertising by advertisers&nbsp;on our Services.</p>
<p><br></p>
<h2>11. Controls for Do-Not-Track Features</h2>
<p><br></p>
<p>Most web browsers and some mobile operating systems and mobile applications include a Do-Not-Track ("DNT") feature or setting you can activate to signal your privacy preference not to have data about your online browsing activities monitored and collected. At this stage no uniform technology standard for&nbsp;recognizing&nbsp;and implementing DNT signals has been&nbsp;finalized. As such, we do not currently respond to DNT browser signals or any other mechanism that automatically communicates your choice not to be tracked online. If a standard for online tracking is adopted that we must follow in the future, we will inform you about that practice in a revised version of this privacy policy.</p>
<p><br></p>
<h2>12. Do United States Residents Have Specific Privacy Rights?</h2>
<p><br></p>
<p><strong><em>In Short:&nbsp;</em></strong><em>If you are a resident of&nbsp;California, Colorado, Connecticut, Utah&nbsp;or Virginia, you are granted specific rights regarding access to your personal information.</em></p>
<p><br></p>
<p><strong>What categories of personal information do we collect?</strong></p>
<p><br></p>
<p>We have collected the following categories of personal information in the past twelve (12) months:</p>

<table width="100%" style="border-collapse: collapse;">
  <tr style="border-top: 1px solid #000; border-bottom: 1px solid #000;">
      <th style="padding: 1em;">Category</th>
      <th style="padding: 1em;">Examples</th>
      <th style="padding: 1em;">Collected</th>
  </tr>
  <tr>
      <td style="padding: 1em;">A. Identifiers</td>
      <td style="padding: 1em;">Contact details, such as real name, alias, postal address, telephone or mobile contact number, unique personal identifier, online identifier, Internet Protocol address, email address, and account name</td>
      <td style="padding: 1em;">YES</td>
  </tr>
  <tr>
      <td style="padding: 1em;">B. Personal information as defined in the California Customer Records statute</td>
      <td style="padding: 1em;">Name, contact information, education, employment, employment history, and financial information</td>
      <td style="padding: 1em;">YES</td>
  </tr>
  <tr>
      <td style="padding: 1em;">C. Protected classification characteristics under state or federal law</td>
      <td style="padding: 1em;">Gender and date of birth</td>
      <td style="padding: 1em;">YES</td>
  </tr>
  <tr>
      <td style="padding: 1em;">D. Commercial information</td>
      <td style="padding: 1em;">Transaction information, purchase history, financial details, and payment information</td>
      <td style="padding: 1em;">YES</td>
  </tr>
  <tr>
      <td style="padding: 1em;">E. Biometric information</td>
      <td style="padding: 1em;">Fingerprints and voiceprints</td>
      <td style="padding: 1em;">NO</td>
  </tr>
  <tr>
      <td style="padding: 1em;">F. Internet or other similar network activity</td>
      <td style="padding: 1em;">Browsing history, search history, online&nbsp;behavior, interest data, and interactions with our and other websites, applications, systems, and advertisements</td>
      <td style="padding: 1em;">YES</td>
  </tr>
  <tr>
      <td style="padding: 1em;">G. Geolocation data</td>
      <td style="padding: 1em;">Device location</td>
      <td style="padding: 1em;">NO</td>
  </tr>
  <tr>
      <td style="padding: 1em;">H. Audio, electronic, visual, thermal, olfactory, or similar information</td>
      <td style="padding: 1em;">Images and audio, video or call recordings created in connection with our business activities</td>
      <td style="padding: 1em;">NO</td>
  </tr>
  <tr>
      <td style="padding: 1em;">I. Professional or employment-related information</td>
      <td style="padding: 1em;">Business contact details in order to provide you our Services at a business level or job title, work history, and professional qualifications if you apply for a job with us</td>
      <td style="padding: 1em;">NO</td>
  </tr>
  <tr>
      <td style="padding: 1em;">J. Education Information</td>
      <td style="padding: 1em;">Student records and directory information</td>
      <td style="padding: 1em;">NO</td>
  </tr>
  <tr>
      <td style="padding: 1em;">K. Inferences drawn from collected personal information</td>
      <td style="padding: 1em;">Inferences drawn from any of the collected personal information listed above to create a profile or summary about, for example, an individual’s preferences and characteristics</td>
      <td style="padding: 1em;">YES</td>
  </tr>
  <tr style="border-bottom: 1px solid #000;">
      <td style="padding: 1em;">L. Sensitive personal Information</td>
      <td style="padding: 1em;">Health data</td>
      <td style="padding: 1em;">YES</td>
  </tr>
</table>



<p>We will use and retain the collected personal information as needed to provide the Services or for:</p>
<ul>
  <li>Category A -&nbsp;As long as the user has an account with us</li>
</ul>
<ul>
  <li>Category B -&nbsp;As long as the user has an account with us</li>
</ul>
<ul>
  <li>Category&nbsp;C&nbsp;-&nbsp;As long as the user has an account with us</li>
</ul>
<ul>
  <li>Category&nbsp;D&nbsp;-&nbsp;As long as the user has an account with us</li>
</ul>
<ul>
  <li>Category&nbsp;F&nbsp;-&nbsp;As long as the user has an account with us</li>
</ul>
<ul>
  <li>Category&nbsp;K&nbsp;-&nbsp;As long as the user has an account with us</li>
</ul>
<ul>
  <li>Category&nbsp;L&nbsp;-&nbsp;As long as the user has an account with us</li>
</ul>
<p>Category&nbsp;L&nbsp;information may be used, or disclosed to a service provider or contractor, for additional, specified purposes. You have the right to limit the use or disclosure of your sensitive personal information.</p>
<p><br></p>
<p>We may also collect other personal information outside of these categories through instances where you interact with us in person, online, or by phone or mail in the context of:</p>
<ul>
  <li>Receiving help through our customer support channels;</li>
</ul>
<ul>
  <li>Participation in customer surveys or contests; and</li>
</ul>
<ul>
  <li>Facilitation in the delivery of our Services and to respond to your inquiries.</li>
</ul>
<p><strong>How do we use and share your personal information?</strong></p>
<p><br></p>
<p>Learn about how we use your personal information in the section,&nbsp;"How Do We Process Your Information?"</p>
<p><br></p>
<p><strong>Will your information be shared with anyone else?</strong></p>
<p><br></p>
<p>We may disclose your personal information with our service providers pursuant to a written contract between us and each service provider. Learn more about how we disclose personal information to in the section,&nbsp;"When and with Whom Do We Share Your Personal Information?"</p>
<p><br></p>
<p>We may use your personal information for our own business purposes, such as for undertaking internal research for technological development and demonstration. This is not considered to be&nbsp;"selling"&nbsp;of your personal information.</p>
<p><br></p>
<p>We have disclosed the following categories of personal information to third parties for a business or commercial purpose in the preceding twelve (12) months:</p>
<ul>
  <li>Category A. Identifiers</li>
</ul>
<ul>
  <li>Category B. Personal information as defined in the California Customer Records law</li>
</ul>
<ul>
  <li>Category&nbsp;C. Characteristics of protected classifications under state or federal law</li>
</ul>
<ul>
  <li>Category&nbsp;D. Commercial information</li>
</ul>
<ul>
  <li>Category&nbsp;F. Internet or other electronic network activity information</li>
</ul>
<ul>
  <li>Category&nbsp;K. Inferences drawn from collected personal information</li>
</ul>
<p>The categories of third parties to whom we disclosed personal information for a business or commercial purpose can be found under&nbsp;"When and with Whom Do We Share Your Personal Information?"</p>
<p><br></p>
<p>We have sold or shared the following categories of personal information to third parties in the preceding twelve (12) months:</p>
<ul>
  <li>Category A. Identifiers</li>
</ul>
<ul>
  <li>Category B. Personal information as defined in the California Customer Records law</li>
</ul>
<ul>
  <li>Category&nbsp;C. Characteristics of protected classifications under state or federal law</li>
</ul>
<ul>
  <li>Category&nbsp;D. Commercial information</li>
</ul>
<ul>
  <li>Category&nbsp;F. Internet or other electronic network activity information</li>
</ul>
<ul>
  <li>Category&nbsp;K. Inferences drawn from collected personal information</li>
</ul>
<ul>
  <li>Category&nbsp;L. Sensitive personal information</li>
</ul>
<p>The categories of third parties to whom we sold personal information are:</p>
<ul>
  <li>Ad Networks</li>
</ul>
<ul>
  <li>Affiliate Marketing Programs</li>
</ul>
<ul>
  <li>Data Analytics Services</li>
</ul>
<ul>
  <li>Retargeting Platforms</li>
</ul>
<ul>
  <li>Social Networks</li>
</ul>
<ul>
  <li>User Account Registration &amp; Authentication Services</li>
</ul>
<p><br></p>
<p>The categories of third parties to whom we shared personal information with are:</p>
<ul>
  <li>Ad Networks</li>
</ul>
<ul>
  <li>Affiliate Marketing Programs</li>
</ul>
<ul>
  <li>Data Analytics Services</li>
</ul>
<ul>
  <li>Social Networks</li>
</ul>
<ul>
  <li>Retargeting Platforms</li>
</ul>
<ul>
  <li>User Account Registration &amp; Authentication Services</li>
</ul>
<p><br></p>
<p><strong>California Residents</strong></p>
<p><br></p>
<p>California Civil Code Section 1798.83, also known as the&nbsp;"Shine The Light"&nbsp;law permits our users who are California residents to request and obtain from us, once a year and free of charge, information about categories of personal information (if any) we disclosed to third parties for direct marketing purposes and the names and addresses of all third parties with which we shared personal information in the immediately preceding calendar year. If you are a California resident and would like to make such a request, please submit your request in writing to us using the contact information provided below.</p>
<p><br></p>
<p>If you are under 18 years of age, reside in California, and have a registered account with the Services, you have the right to request removal of unwanted data that you publicly post on the Services. To request removal of such data, please contact us using the contact information provided below and include the email address associated with your account and a statement that you reside in California. We will make sure the data is not publicly displayed on the Services, but please be aware that the data may not be completely or comprehensively removed from all our systems (e.g.,&nbsp;backups, etc.).</p>
<p><br></p>
<p><strong>CCPA Privacy Notice</strong></p>
<p><br></p>
<p>This section applies only to California residents. Under the California Consumer Privacy Act (CCPA), you have the rights listed below.</p>
<p><br></p>
<p>The California Code of Regulations defines a&nbsp;"resident"&nbsp;as:</p>
<ol>
  <li>Every individual who is in the State of California for other than a temporary or transitory purpose and</li>
  <li>Every individual who is domiciled in the State of California who is outside the State of California for a temporary or transitory purpose</li>
</ol>
<p>All other individuals are defined as&nbsp;"non-residents."</p>
<p><br></p>
<p>If this definition of&nbsp;"resident"&nbsp;applies to you, we must adhere to certain rights and obligations regarding your personal information.</p>
<p><br></p>
<p><strong>Your rights with respect to your personal data</strong></p>
<p><br></p>
<p>Right to request deletion of the data — Request to delete</p>
<p><br></p>
<p>You can ask for the deletion of your personal information. If you ask us to delete your personal information, we will respect your request and delete your personal information, subject to certain exceptions provided by law, such as (but not limited to) the exercise by another consumer of his or her right to free speech, our compliance requirements resulting from a legal obligation, or any processing that may be required to protect against illegal activities.</p>
<p><br></p>
<p>Right to be informed — Request to know</p>
<p><br></p>
<p>Depending on the circumstances, you have a right to know:</p>
<ul>
  <li>whether we collect and use your personal information;</li>
</ul>
<ul>
  <li>the categories of personal information that we collect;</li>
</ul>
<ul>
  <li>the purposes for which the collected personal information is used;</li>
</ul>
<ul>
  <li>whether we sell or share personal information to third parties;</li>
</ul>
<ul>
  <li>the categories of personal information that we sold, shared, or disclosed for a business purpose;</li>
</ul>
<ul>
  <li>the categories of third parties to whom the personal information was sold, shared, or disclosed for a business purpose;</li>
</ul>
<ul>
  <li>the business or commercial purpose for collecting, selling, or sharing personal information; and</li>
</ul>
<ul>
  <li>the specific pieces of personal information we collected about you.</li>
</ul>
<p>In accordance with applicable law, we are not obligated to provide or delete consumer information that is de-identified in response to a consumer request or to re-identify individual data to verify a consumer request.</p>
<p><br></p>
<p>Right to Non-Discrimination for the Exercise of a Consumer’s Privacy Rights</p>
<p><br></p>
<p>We will not discriminate against you if you exercise your privacy rights.</p>
<p><br></p>
<p>Right to Limit Use and Disclosure of Sensitive Personal Information</p>
<p><br></p>
<p>If the business collects any of the following:</p>
<ul>
  <li>social security information, drivers' licenses, state ID cards, passport numbers</li>
</ul>
<ul>
  <li>account login information</li>
</ul>
<ul>
  <li>credit card numbers, financial account information, or credentials allowing access to such accounts</li>
</ul>
<ul>
  <li>precise geolocation</li>
</ul>
<ul>
  <li>racial or ethnic origin, religious or philosophical beliefs, union membership</li>
</ul>
<ul>
  <li>the contents of email and text, unless the business is the intended recipient of the communication</li>
</ul>
<ul>
  <li>genetic data, biometric data, and health data</li>
</ul>
<ul>
  <li>data concerning sexual orientation and sex life</li>
</ul>
<p>you have the right to direct that business to limit its use of your sensitive personal information to that use which is necessary to perform the Services.</p>
<p><br></p>
<p>Once a business receives your request, they are no longer allowed to use or disclose your sensitive personal information for any other purpose unless you provide consent for the use or disclosure of sensitive personal information for additional purposes.</p>
<p><br></p>
<p>Please note that sensitive personal information that is collected or processed without the purpose of inferring characteristics about a consumer is not covered by this right, as well as the publicly available information.</p>
<p><br></p>
<p>To exercise your right to limit use and disclosure of sensitive personal information, please&nbsp;submit a&nbsp;data subject access request.</p>
<p><br></p>
<p>Verification process</p>
<p><br></p>
<p>Upon receiving your request, we will need to verify your identity to determine you are the same person about whom we have the information in our system. These verification efforts require us to ask you to provide information so that we can match it with information you have previously provided us. For instance, depending on the type of request you submit, we may ask you to provide certain information so that we can match the information you provide with the information we already have on file, or we may contact you through a communication method (e.g.,&nbsp;phone or email) that you have previously provided to us. We may also use other verification methods as the circumstances dictate.</p>
<p><br></p>
<p>We will only use personal information provided in your request to verify your identity or authority to make the request. To the extent possible, we will avoid requesting additional information from you for the purposes of verification. However, if we cannot verify your identity from the information already maintained by us, we may request that you provide additional information for the purposes of verifying your identity and for security or fraud-prevention purposes. We will delete such additionally provided information as soon as we finish verifying you.</p>
<p><br></p>
<p>Other privacy rights</p>
<p><br></p>
<ul>
  <li>You may object to the processing of your personal information.</li>
</ul>
<ul>
  <li>You may request correction of your personal data if it is incorrect or no longer relevant, or ask to restrict the processing of the information.</li>
</ul>
<ul>
  <li>You can designate an&nbsp;authorized&nbsp;agent to make a request under the CCPA on your behalf. We may deny a request from an&nbsp;authorized&nbsp;agent that does not submit proof that they have been validly&nbsp;authorized&nbsp;to act on your behalf in accordance with the CCPA.</li>
</ul>
<p><br></p>
<p>You can opt out from the selling or sharing of your personal information by disabling cookies in Cookie Preference Settings and clicking on the Do Not Sell or Share My Personal Information link on our homepage.</p>
<p><br></p>
<p>To exercise these rights, you can contact us&nbsp;by submitting a&nbsp;data subject access request,&nbsp;by visiting&nbsp;https://tastemate.pro/,&nbsp;or by referring to the contact details at the bottom of this document. If you have a complaint about how we handle your data, we would like to hear from you.</p>
<p><br></p>
<p><strong>Colorado Residents</strong></p>
<p><br></p>
<p>This section applies only to Colorado residents. Under the Colorado Privacy Act (CPA), you have the rights listed below. However, these rights are not absolute, and in certain cases, we may decline your request as permitted by law.</p>
<ul>
  <li>Right to be informed whether or not we are processing your personal data</li>
</ul>
<ul>
  <li>Right to access your personal data</li>
</ul>
<ul>
  <li>Right to correct inaccuracies in your personal data</li>
</ul>
<ul>
  <li>Right to request deletion of your personal data</li>
</ul>
<ul>
  <li>Right to obtain a copy of the personal data you previously shared with us</li>
</ul>
<ul>
  <li>Right to opt out of the processing of your personal data if it is used for targeted advertising, the sale of personal data, or profiling in furtherance of decisions that produce legal or similarly significant effects ("profiling")</li>
</ul>
<p>We sell personal data to third parties or process personal data for targeted advertising. You can opt out from the selling of your personal data, targeted advertising, or profiling by disabling cookies in Cookie Preference Settings.<span style="font-size: 14px;">&nbsp;</span>To submit a request to exercise<span style="font-size: 14px;">&nbsp;</span>any of the other<span style="font-size: 14px;">&nbsp;</span>rights described above, please&nbsp;submit a&nbsp;<span style="font-size: 14px;">data subject access request.</span></p>
<p><br></p>
<p>If we decline to take action regarding your request and you wish to appeal our decision, please email us at&nbsp;<a href="mailto:tastemate@proton.me" style="color: black;">tastemate@proton.me</a>. Within forty-five (45) days of receipt of an appeal, we will inform you in writing of any action taken or not taken in response to the appeal, including a written explanation of the reasons for the decisions.</p>
<p><br></p>
<p><strong>Connecticut Residents</strong></p>
<p><br></p>
<p>This section applies only to Connecticut residents. Under the Connecticut Data Privacy Act (CTDPA), you have the rights listed below. However, these rights are not absolute, and in certain cases, we may decline your request as permitted by law.</p>
<ul>
  <li>Right to be informed whether or not we are processing your personal data</li>
</ul>
<ul>
  <li>Right to access your personal data</li>
</ul>
<ul>
  <li>Right to correct inaccuracies in your personal data</li>
</ul>
<ul>
  <li>Right to request deletion of your personal data</li>
</ul>
<ul>
  <li>Right to obtain a copy of the personal data you previously shared with us</li>
</ul>
<ul>
  <li>Right to opt out of the processing of your personal data if it is used for targeted advertising, the sale of personal data, or profiling in furtherance of decisions that produce legal or similarly significant effects ("profiling")</li>
</ul>
<p>We sell personal data to third parties or process personal data for targeted advertising. You can opt out from the selling of your personal data, targeted advertising, or profiling by disabling cookies in Cookie Preference Settings.&nbsp;To submit a request to exercise&nbsp;any of the other&nbsp;rights described above, please&nbsp;submit a&nbsp;data subject access request.</p>
<p><br></p>
<p>If we decline to take action regarding your request and you wish to appeal our decision, please email us at&nbsp;<a href="mailto:tastemate@proton.me" style="color: black;">tastemate@proton.me</a>. Within sixty (60) days of receipt of an appeal, we will inform you in writing of any action taken or not taken in response to the appeal, including a written explanation of the reasons for the decisions.</p>
<p><br></p>
<p><strong>Utah Residents</strong></p>
<p><br></p>
<p>This section applies only to Utah residents. Under the Utah Consumer Privacy Act (UCPA), you have the rights listed below. However, these rights are not absolute, and in certain cases, we may decline your request as permitted by law.</p>
<ul>
  <li>Right to be informed whether or not we are processing your personal data</li>
</ul>
<ul>
  <li>Right to access your personal data</li>
</ul>
<ul>
  <li>Right to request deletion of your personal data</li>
</ul>
<ul>
  <li>Right to obtain a copy of the personal data you previously shared with us</li>
</ul>
<ul>
  <li>Right to opt out of the processing of your personal data if it is used for targeted advertising or the sale of personal data</li>
</ul>
<p>We sell personal data to third parties or process personal data for targeted advertising. You can opt out from the selling of your personal data or targeted advertising by disabling cookies in Cookie Preference Settings.&nbsp;To submit a request to exercise&nbsp;any of the other&nbsp;rights described above, please&nbsp;submit a&nbsp;data subject access request.</p>
<p><br></p>
<p><strong>Virginia Residents</strong></p>
<p><br></p>
<p>Under the Virginia Consumer Data Protection Act (VCDPA):</p>
<p><br></p>
<p>"Consumer"&nbsp;means a natural person who is a resident of the Commonwealth acting only in an individual or household context. It does not include a natural person acting in a commercial or employment context.</p>
<p><br></p>
<p>"Personal data"&nbsp;means any information that is linked or reasonably linkable to an identified or identifiable natural person.&nbsp;"Personal data"&nbsp;does not include de-identified data or publicly available information.</p>
<p><br></p>
<p>"Sale of personal data"&nbsp;means the exchange of personal data for monetary consideration.</p>
<p><br></p>
<p>If this definition of&nbsp;"consumer"&nbsp;applies to you, we must adhere to certain rights and obligations regarding your personal data.</p>
<p><br></p>
<p>Your rights with respect to your personal data</p>
<p><br></p>
<ul>
  <li>Right to be informed whether or not we are processing your personal data</li>
</ul>
<ul>
  <li>Right to access your personal data</li>
</ul>
<ul>
  <li>Right to correct inaccuracies in your personal data</li>
</ul>
<ul>
  <li>Right to request deletion of your personal data</li>
</ul>
<ul>
  <li>Right to obtain a copy of the personal data you previously shared with us</li>
</ul>
<ul>
  <li>Right to opt out of the processing of your personal data if it is used for targeted advertising, the sale of personal data, or profiling in furtherance of decisions that produce legal or similarly significant effects ("profiling")</li>
</ul>
<p><br></p>
<p>We sell personal data to third parties or process personal data for targeted advertising. Please see the following section to find out how you can opt out from further selling or sharing of your personal data for targeted advertising or profiling purposes.</p>
<p><br></p>
<p><em>Exercise your rights provided under the Virginia VCDPA</em></p>
<p><br></p>
<p>You can opt out from the selling of your personal data, targeted advertising, or profiling by disabling cookies in Cookie Preference Settings.&nbsp;You may&nbsp;submit a&nbsp;data subject access request.</p>
<p><br></p>
<p>If you are using an&nbsp;authorized&nbsp;agent to exercise your rights, we may deny a request if the&nbsp;authorized&nbsp;agent does not submit proof that they have been validly&nbsp;authorized&nbsp;to act on your behalf.</p>
<p><br></p>
<p><em>Verification process</em></p>
<p><br></p>
<p>We may request that you provide additional information reasonably necessary to verify you and your consumer's request. If you submit the request through an&nbsp;authorized&nbsp;agent, we may need to collect additional information to verify your identity before processing your request.</p>
<p><br></p>
<p>Upon receiving your request, we will respond without undue delay, but in all cases, within forty-five (45) days of receipt. The response period may be extended once by forty-five (45) additional days when reasonably necessary. We will inform you of any such extension within the initial 45-day response period, together with the reason for the extension.</p>
<p><br></p>
<p><em>Right to appeal</em></p>
<p><br></p>
<p>If we decline to take action regarding your request, we will inform you of our decision and reasoning behind it. If you wish to appeal our decision, please email us at&nbsp;<a href="mailto:tastemate@proton.me" style="color: black;">tastemate@proton.me</a>. Within sixty (60) days of receipt of an appeal, we will inform you in writing of any action taken or not taken in response to the appeal, including a written explanation of the reasons for the decisions. If your appeal is denied, you may contact the&nbsp;Attorney General to submit a complaint.</p>
<p><br></p>
<h2>13. Do We Make Updates to This Notice?</h2>
<p><br></p>
<p><strong><em>In Short:&nbsp;</em></strong><em>Yes, we will update this notice as necessary to stay compliant with relevant laws.</em></p>
<p><br></p>
<p>We may update this privacy policy from time to time. The updated version will be indicated by an updated&nbsp;"Revised"&nbsp;date and the updated version will be effective as soon as it is accessible. If we make material changes to this privacy policy, we may notify you either by prominently posting a notice of such changes or by directly sending you a notification. We encourage you to review this privacy policy frequently to be informed of how we are protecting your information.</p>
<p><br></p>
<h2>14. How Can You Contact Us about This Notice?</h2>
<p><br></p>
<p>If you have questions or comments about this notice, you may&nbsp;contact us by email at <a href="mailto:tastemate@proton.me" style="color: black;">tastemate@proton.me</a>.</p>
<p><br></p>
<h2>15. How Can You Review, Update, or Delete the Data We Collect from You?</h2>
<p><br></p>
<p>Based on the applicable laws of your country, you may have the right to request access to the personal information we collect from you, change that information, or delete it.&nbsp;To request to review, update, or delete your personal information, please&nbsp;fill out and submit a&nbsp;data subject access request.</p>
<p><br></p><p><br></p><p><br></p><p><br></p>
""";
