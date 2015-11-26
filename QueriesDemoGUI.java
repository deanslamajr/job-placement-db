import java.sql.*;
import oracle.jdbc.pool.OracleDataSource;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.JList;
import javax.swing.ListSelectionModel;
import javax.swing.DefaultListModel;
import javax.swing.JTextField;
import javax.swing.JOptionPane;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JTextArea;
import javax.swing.JScrollPane;
import javax.swing.JFileChooser;
import javax.swing.filechooser.FileNameExtensionFilter;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.FileNotFoundException;
import java.util.ArrayList;

public class QueriesDemoGUI extends JFrame {
  
  private JLabel mainTitle;
  private JPanel titlePanel;
  private JPanel queriesRow1;
  private JButton query1Button;
  private JButton query2Button;
  private JButton query3Button;
  private JButton query4Button;
  private JButton query5Button;
  private JPanel queriesRow2;
  private JButton query6Button;
  private JButton query7Button;
  private JButton query8Button;
  private JButton query9Button;
  private JButton query10Button;
  private JPanel queriesRow3;
  private JButton query11Button;
  private JButton query12Button;
  private JButton query13Button;
  private JButton query14Button;
  private JButton query15Button;
  private JPanel queriesRow4;
  private JButton query16Button;
  private JButton query17Button;
  private JButton query18Button;
  private JButton query19Button;
  private JButton query20Button;
  private JPanel queriesRow5;
  private JButton query21Button;
  private JButton query22Button;
  private JButton query23Button;
  private JButton query24Button;
  private JButton query25Button;
  private JPanel queriesRow6;
  private JButton query26Button;
  private JButton query27Button;
  private JButton query28Button;
  private JButton query29Button;
  private JButton query30Button;
  private JPanel lowerPanel;
  private JButton updateButton;
  private JButton exitButton;
  private ButtonClickHandler buttonClickHandler;

  private JPanel topStuffPanel;
  private JPanel topOfTheTopStuffPanel;
  private JTextArea queryProblemLabel;
  private ArrayList<JPanel> comboBoxPanels;
  private JLabel queryLabel;
  private JPanel queryQuestionPanel;
  private ArrayList<JComboBox<String>> queryQuestionsComboBoxes;
  private JTextArea textArea;
  private JScrollPane scroll;
  private JPanel lowerButtonsPanel;
  private JButton showQueryButton;
  private JButton executeQueryButton;
  private JButton goBackButton;
  private ArrayList<String> queryData;
  private String queryDataForDisplay;

  private JButton clearDataButton;
  private JButton customInsertionButton;
  private JButton randomDataGenerationButton;

  private JPanel findJobPanel;
  private JButton findJobButton;
  private JPanel managerServicesPanel;
  private JButton managerServicesButton;
  private JPanel jobAssistanceServicesPanel;
  private JButton jobAssistanceServicesButton;

  private JPanel evaluateBusinessSectorsPanel;
  private JButton evaluateBusinessSectorsButton;
  private JPanel trainingOptimizationsPanel;
  private JButton trainingOptimizationsButton;

  private JPanel businessSectorsPanel;
  private JLabel noSectorsLabel;
  private JComboBox<String> businessSectorsComboBox;
  private JButton selectSectorButton;

  private JPanel jobOpportunitiesPanel;
  private DefaultListModel<String> jobOpportunitiesView;
  private JList<String> jobOpportunitiesList;

  private JPanel acceptAnApplicantPanel;
  private JButton acceptAnApplicantButton;
  private JPanel fillAnOpeningPanel;
  private JButton fillAnOpeningButton;  

  private JComboBox<String> personsComboBox;
  private JButton selectPersonButton;
  private JPanel personsListPanel;
  private JButton newPersonButton;

  private JPanel firstNamePanel;
  private JLabel firstNameLabel;
  private JPanel firstNamePanelInner;
  private JTextField firstNameField;
  private JPanel middleNamePanel;
  private JLabel middleNameLabel;
  private JPanel middleNamePanelInner;
  private JTextField middleNameField;
  private JPanel lastNamePanel;
  private JLabel lastNameLabel;
  private JPanel lastNamePanelInner;
  private JTextField lastNameField;
  private JLabel genderLabel;
  private JPanel genderPanel;
  private JComboBox<String> genderComboBox;
  private JPanel emailPanel;
  private JLabel emailLabel;
  private JPanel emailPanelInner;
  private JTextField emailField;
  private JPanel addressPanel;
  private JPanel addyNumberPanelInner;
  private JLabel addyNumberLabel;
  private JTextField addyNumberField;
  private JPanel addyNamePanelInner;
  private JLabel addyNameLabel;
  private JTextField addyNameField;
  private JLabel aptNumberLabel;
  private JPanel aptNumberPanelInner;
  private JTextField aptNumberField;
  private JPanel cityStateZipPanel;
  private JPanel cityPanelInner;
  private JLabel cityLabel;
  private JTextField cityField;
  private JPanel statePanelInner;
  private JLabel stateLabel;
  private JTextField stateField;
  private JLabel zipcodeLabel;
  private JPanel zipcodePanelInner;
  private JTextField zipcodeField;

  private JButton applyForJobButton;
  private JPanel applyForJobPanel;
  private JButton viewOffersButton;
  private JPanel viewOffersPanel;

  private JComboBox<String> qualifiedJobsComboBox;
  private JPanel qualifiedJobsPanel;
  private JLabel noQualifiesJobsLabel;
  private JButton applyButton;

  private JLabel infoLabel;
  private JPanel infoPanel;
  private JPanel returnPanel;
  private JButton returnButton;

  private JPanel jobOffersPanel;
  private JLabel noOffersLabel;
  private JComboBox<String> jobOffersComboBox;
  private JButton acceptButton;

  private JPanel companiesListPanel;
  private JLabel noCompaniesLabel;
  private JComboBox<String> companiesComboBox;

  private JTextArea applicantDataArea;
  private JPanel middlePanel;
  private JPanel rightPanel;
  private JLabel noApplicantsLabel;
  private JComboBox<String> applicantsComboBox;
  private JButton showInfoButton;
  private JButton rejectButton;
  private JButton acceptApplicantButton;

  private JPanel chooseJobPanel;
  private JLabel chooseJobLabel;
  private JPanel jobSelectionPanel;
  private JLabel noJobsLabel;
  private JComboBox<String> jobsComboBox;
  private JButton createJobButton;
  private JPanel kQuestionPanel;
  private JLabel kQuestionLabel;
  private JLabel kQuestionLabel2;
  private JPanel kNumberPanel;
  private JComboBox<Integer> kNumberComboBox;
  private JButton seePersonsButton;

  private JList<String> qualifiedPersonsList;
  private JPanel qualifiedPersonsPanel;
  private JLabel noResultsLabel;
  private DefaultListModel<String> qualifiedPersonsView;
  private JButton makeOfferButton;

  private BufferedReader buffReader;

  private String username;
  private String password;

  // Global Data stores
  private String interestedPersonsData;
  private String jobToApplyToData;
  private String interestedCompanyData;
  private String interestedApplicantData;
  private String jobOfferedData;
  private String interestedJobData;
  private String interestedSector;
  private int interestedKData;
  private Person personStore;

  private int numberOfComboBoxes = 0;

  // Query Data locations
  private final int DESCRIPTION   = 0;
  private final int QUERY         = 1;
  private final int COMBOBOXCOUNT = 2;
  private final int UNKNOWNSMAP   = 3;
  private final int EXPLANATION   = 4;
  private final int COMBOQUERY    = 5;
  private final int COLUMNNUMBER  = 6;


  public QueriesDemoGUI(String username, String password) {
    super("QueriesDemoGUI");

    this.username = username;
    this.password = password;

    buttonClickHandler = new ButtonClickHandler();

    drawMainMenu();
  }

  void drawMainMenu() {
    getContentPane().removeAll();

    setLayout(new GridLayout( 5, 1) );

    mainTitle = new JLabel("Main Menu");
    add(mainTitle);

    findJobPanel = new JPanel();
    findJobButton = new JButton("Worker Services");
    findJobPanel.add(findJobButton);
    findJobButton.addActionListener(buttonClickHandler);
    add(findJobPanel);

    managerServicesPanel = new JPanel();
    managerServicesButton = new JButton("Manager Services");
    managerServicesPanel.add(managerServicesButton);
    managerServicesButton.addActionListener(buttonClickHandler);
    add(managerServicesPanel);

    jobAssistanceServicesPanel = new JPanel();
    jobAssistanceServicesButton = new JButton("Job Assistance Services");
    jobAssistanceServicesPanel.add(jobAssistanceServicesButton);
    jobAssistanceServicesButton.addActionListener(buttonClickHandler);
    add(jobAssistanceServicesPanel);

    updateButton = new JButton("Options");
    updateButton.addActionListener(buttonClickHandler);
    exitButton = new JButton("EXIT");
    exitButton.addActionListener(buttonClickHandler);
    lowerPanel = new JPanel();
    lowerPanel.add(updateButton);
    lowerPanel.add(exitButton);
    add(lowerPanel);

    revalidate();
    repaint();
  }

  void drawJobAssistanceServicesScreen() {
    getContentPane().removeAll();

    setLayout(new GridLayout( 4, 1) );

    mainTitle = new JLabel("Manager Services Menu");
    add(mainTitle);

    evaluateBusinessSectorsPanel = new JPanel();
    evaluateBusinessSectorsButton = new JButton("Evaluate the opportunities in all business sectors");
    evaluateBusinessSectorsButton.addActionListener(buttonClickHandler);
    evaluateBusinessSectorsPanel.add(evaluateBusinessSectorsButton);
    add(evaluateBusinessSectorsPanel);

    trainingOptimizationsPanel = new JPanel();
    trainingOptimizationsButton = new JButton("Training optimizations");
    trainingOptimizationsPanel.add(trainingOptimizationsButton);
    add(trainingOptimizationsPanel);

    lowerPanel = new JPanel();
    exitButton = new JButton("Go Back To Main Menu");
    exitButton.addActionListener(buttonClickHandler);
    lowerPanel.add(exitButton);
    add(lowerPanel);

    revalidate();
    repaint();
  }

  void drawSectorsOpportunitiesScreen() {
    getContentPane().removeAll();

    setLayout(new GridLayout( 3, 1) );

    mainTitle = new JLabel("Select a Business Sector");
    add(mainTitle);

    lowerPanel = new JPanel();
    exitButton = new JButton("Go Back To Main Menu");
    exitButton.addActionListener(buttonClickHandler);
    lowerPanel.add(exitButton);

    businessSectorsPanel = new JPanel();

    String businessSectorsQuery = "SELECT sector_id || ' ' || name FROM sector";
    ArrayList<String> businessSectors = executeQuery(businessSectorsQuery, 1);
    if(businessSectors.size() == 0) {
      noSectorsLabel = new JLabel("Currently, there are no business sectors available to choose from.");
      businessSectorsPanel.add(noSectorsLabel);
    }
    else {
      businessSectorsComboBox = new JComboBox<>();
      for(String aSector: businessSectors) {
        businessSectorsComboBox.addItem(aSector);
      }
      businessSectorsPanel.add(businessSectorsComboBox);

      selectSectorButton = new JButton("Select this sector");
      selectSectorButton.addActionListener(buttonClickHandler);
      lowerPanel.add(selectSectorButton);
    }
    add(businessSectorsPanel);

    add(lowerPanel);

    revalidate();
    repaint();
  }

  void drawJobOpportunitiesScreen() {
    getContentPane().removeAll();

    String[] sectorTokens = interestedSector.split(" ");

    setLayout(new GridLayout( 3, 1) );

    mainTitle = new JLabel("Available job opportunies in the " + sectorTokens[1] + " sector");
    add(mainTitle);

    String jobOpportunitiesQuery = "select distinct jp.title || ' @ ' || c.name from job j, company c, job_profile jp, works w where c.sector_id = " + sectorTokens[0] + " and j.company_id = c.company_id and jp.job_code = j.job_code minus select distinct jp.title || ' @ ' || c.name from job j, company c, job_profile jp, works w where c.sector_id = " + sectorTokens[0] + " and j.company_id = c.company_id and j.job_id = w.job_id and w.end_date is null and jp.job_code = j.job_code";
    ArrayList<String> queryResult = executeQuery(jobOpportunitiesQuery, 1);

    jobOpportunitiesPanel = new JPanel();
    if(queryResult.size() == 0 ) {
      noResultsLabel = new JLabel("There are currently no job opportunities in this sector.");
      jobOpportunitiesPanel.add(noResultsLabel);
    }
    else {
      jobOpportunitiesView = new DefaultListModel<String>();
      for(String aJob: queryResult) {
        jobOpportunitiesView.addElement(aJob);
      }
      jobOpportunitiesList = new JList<String>(jobOpportunitiesView);
      jobOpportunitiesPanel.add(jobOpportunitiesList);
    }
    add(jobOpportunitiesPanel);

    lowerPanel = new JPanel();
    exitButton = new JButton("Go back to select sector");
    exitButton.addActionListener(buttonClickHandler);
    lowerPanel.add(exitButton);
    add(lowerPanel);

    revalidate();
    repaint();
  }

  void drawManagerServicesScreen() {
    getContentPane().removeAll();

    setLayout(new GridLayout( 4, 1) );

    mainTitle = new JLabel("Manager Services Menu");
    add(mainTitle);

    acceptAnApplicantPanel = new JPanel();
    acceptAnApplicantButton = new JButton("Accept an applicant");
    acceptAnApplicantButton.addActionListener(buttonClickHandler);
    acceptAnApplicantPanel.add(acceptAnApplicantButton);
    add(acceptAnApplicantPanel);

    fillAnOpeningPanel = new JPanel();
    fillAnOpeningButton = new JButton("Find the right person for a job profile");
    fillAnOpeningButton.addActionListener(buttonClickHandler);
    fillAnOpeningPanel.add(fillAnOpeningButton);
    add(fillAnOpeningPanel);

    exitButton = new JButton("Go Back To Company Select Menu");
    exitButton.addActionListener(buttonClickHandler);
    lowerPanel = new JPanel();
    lowerPanel.add(exitButton);
    add(lowerPanel);

    revalidate();
    repaint();
  }

  void drawSelectPersonScreen() {
    ArrayList<String> peopleFromDB;

    getContentPane().removeAll();

    setLayout(new GridLayout( 3, 1) );

    mainTitle = new JLabel("Who are you?");
    add(mainTitle);

    peopleFromDB = executeQuery("select PERSON_ID || ' ' || FIRST_NAME || ' ' || MIDDLE_NAME || ' ' || LAST_NAME from person", 1);
    personsComboBox = new JComboBox<>();
    for(String aPerson: peopleFromDB) {
      personsComboBox.addItem(aPerson);
    }
    personsListPanel = new JPanel();
    personsListPanel.add(personsComboBox);
    newPersonButton = new JButton("Add a new person");
    newPersonButton.addActionListener(buttonClickHandler);
    personsListPanel.add(newPersonButton);
    add(personsListPanel);

    lowerPanel = new JPanel();
    exitButton = new JButton("Go Back To Main Menu");
    exitButton.addActionListener(buttonClickHandler);
    lowerPanel.add(exitButton);
    selectPersonButton = new JButton("Select this person");
    selectPersonButton.addActionListener(buttonClickHandler);
    lowerPanel.add(selectPersonButton);
    add(lowerPanel);

    revalidate();
    repaint();
  }

  void drawCreatePersonScreen() {
    getContentPane().removeAll();

    setLayout(new GridLayout( 9, 1) );

    mainTitle = new JLabel("Add new person to database");
    add(mainTitle);

    firstNamePanel = new JPanel();
    firstNamePanelInner = new JPanel();
    firstNameLabel = new JLabel("First name");
    firstNamePanelInner.add(firstNameLabel);
    firstNameField = new JTextField(25);
    firstNamePanel.add(firstNamePanelInner);
    firstNamePanel.add(firstNameField);
    add(firstNamePanel);

    middleNamePanel = new JPanel();
    middleNamePanelInner = new JPanel();
    middleNameLabel = new JLabel("middle name");
    middleNamePanelInner.add(middleNameLabel);
    middleNameField = new JTextField(25);
    middleNamePanel.add(middleNamePanelInner);
    middleNamePanel.add(middleNameField);
    add(middleNamePanel);

    lastNamePanel = new JPanel();
    lastNamePanelInner = new JPanel();
    lastNameLabel = new JLabel("last name");
    lastNamePanelInner.add(lastNameLabel);
    lastNameField = new JTextField(25);
    lastNamePanel.add(lastNamePanelInner);
    lastNamePanel.add(lastNameField);
    add(lastNamePanel);

    genderPanel = new JPanel();
    genderLabel = new JLabel("Gender");
    genderPanel.add(genderLabel);
    genderComboBox = new JComboBox<String>();
    genderComboBox.addItem("f");
    genderComboBox.addItem("m");
    genderPanel.add(genderComboBox);
    add(genderPanel);

    emailPanel = new JPanel();
    emailPanelInner = new JPanel();
    emailLabel = new JLabel("email address");
    emailPanelInner.add(emailLabel);
    emailField = new JTextField(25);
    emailPanel.add(emailPanelInner);
    emailPanel.add(emailField);
    add(emailPanel);

    addressPanel = new JPanel();
    addressPanel.setLayout(new GridLayout( 3, 2) );
    addyNumberPanelInner = new JPanel();
    addyNumberLabel = new JLabel("Street Number");
    addyNumberPanelInner.add(addyNumberLabel);
    addyNumberField = new JTextField(10);
    addyNamePanelInner = new JPanel();
    addyNameLabel = new JLabel("Street Name");
    addyNamePanelInner.add(addyNameLabel);
    addyNameField = new JTextField(25);
    aptNumberPanelInner = new JPanel();
    aptNumberLabel = new JLabel("Apt Number");
    aptNumberPanelInner.add(aptNumberLabel);
    aptNumberField = new JTextField(25);
    addressPanel.add(addyNumberPanelInner);
    addressPanel.add(addyNumberField);
    addressPanel.add(addyNamePanelInner);
    addressPanel.add(addyNameField);
    addressPanel.add(aptNumberPanelInner);
    addressPanel.add(aptNumberField);
    add(addressPanel);

    cityStateZipPanel = new JPanel();
    cityStateZipPanel.setLayout(new GridLayout( 3, 2) );
    cityPanelInner = new JPanel();
    cityLabel = new JLabel("City");
    cityPanelInner.add(cityLabel);
    cityField = new JTextField(10);
    statePanelInner = new JPanel();
    stateLabel = new JLabel("State");
    statePanelInner.add(stateLabel);
    stateField = new JTextField(25);
    zipcodePanelInner = new JPanel();
    zipcodeLabel = new JLabel("ZipCode");
    zipcodePanelInner.add(zipcodeLabel);
    zipcodeField = new JTextField(25);
    cityStateZipPanel.add(cityPanelInner);
    cityStateZipPanel.add(cityField);
    cityStateZipPanel.add(statePanelInner);
    cityStateZipPanel.add(stateField);
    cityStateZipPanel.add(zipcodePanelInner);
    cityStateZipPanel.add(zipcodeField);
    add(cityStateZipPanel);

    lowerPanel = new JPanel();
    exitButton = new JButton("Go Back To Person Select Menu");
    exitButton.addActionListener(buttonClickHandler);
    lowerPanel.add(exitButton);
    selectPersonButton = new JButton("Add person");
    selectPersonButton.addActionListener(buttonClickHandler);
    lowerPanel.add(selectPersonButton);
    add(lowerPanel);

    revalidate();
    repaint();
  }

  void drawPersonActionsScreen() {
    getContentPane().removeAll();

    setLayout(new GridLayout( 4, 1) );

    mainTitle = new JLabel(interestedPersonsData + ", what do you want to do?");
    add(mainTitle);

    applyForJobPanel = new JPanel();
    applyForJobButton = new JButton("See jobs this person qualifies for");
    applyForJobButton.addActionListener(buttonClickHandler);
    applyForJobPanel.add(applyForJobButton);
    add(applyForJobPanel);

    viewOffersPanel = new JPanel();
    viewOffersButton = new JButton("View current job offers");
    viewOffersButton.addActionListener(buttonClickHandler);
    viewOffersPanel.add(viewOffersButton);
    add(viewOffersPanel);

    lowerPanel = new JPanel();
    exitButton = new JButton("Go Back To Person Select Menu");
    exitButton.addActionListener(buttonClickHandler);
    lowerPanel.add(exitButton);
    add(lowerPanel);

    revalidate();
    repaint();
  }

  void drawViewQualifiedJobsScreen() {
    ArrayList<String> qualifiedJobs;
    String[] personDataTokens;
    int personId;

    getContentPane().removeAll();

    personDataTokens = interestedPersonsData.split(" ");

    setLayout(new GridLayout( 3, 1) );

    mainTitle = new JLabel(personDataTokens[1] + " " + personDataTokens[2] + " has the necessary skills to apply for the following jobs:");
    add(mainTitle);

    qualifiedJobsPanel = new JPanel();

    lowerPanel = new JPanel();
    exitButton = new JButton("Go Back To Action Select Menu");
    exitButton.addActionListener(buttonClickHandler);
    lowerPanel.add(exitButton);

    try {
      personId = Integer.parseInt(personDataTokens[0]);
      qualifiedJobs = retrieveQualifiedJobs(personId);
    }
    catch(NumberFormatException e){
      qualifiedJobs = new ArrayList<>();;
    }
    if(qualifiedJobs.size() == 0) {
      noQualifiesJobsLabel = new JLabel(personDataTokens[1] + " " + personDataTokens[2] + " does not currently qualify for any jobs");
      qualifiedJobsPanel.add(noQualifiesJobsLabel);
    }
    else {
      qualifiedJobsComboBox = new JComboBox<>();
      for(String aJob: qualifiedJobs) {
        qualifiedJobsComboBox.addItem(aJob);
      }
      qualifiedJobsPanel.add(qualifiedJobsComboBox);

      applyButton = new JButton("Apply for selected job");
      applyButton.addActionListener(buttonClickHandler);
      lowerPanel.add(applyButton);
    }
    add(qualifiedJobsPanel);

    add(lowerPanel);

    revalidate();
    repaint();
  }

  ArrayList<String> retrieveQualifiedJobs(int personId) {
    String[] tokens;
    String result;
    String jobQuery;
    ArrayList<String> roughJobsData;
    ArrayList<String> qualifiedJobs = new ArrayList<>();

    // returns job profiles a person is qualified for
    String query16 = "SELECT distinct jpks.job_code || ' ' || jp.title FROM jp_ks jpks LEFT OUTER JOIN job_profile jp ON jpks.job_code = jp.job_code WHERE NOT EXISTS (SELECT ks_code FROM jp_ks jpks2 WHERE jpks.job_code = jpks2.job_code MINUS SELECT ks_code FROM person_ks WHERE person_id = " + personId + ")";
    ArrayList<String> queryResult = executeQuery(query16, 1);
    for(String aJobProfile: queryResult) {
      tokens = aJobProfile.split(" ");
      // returns jos that match the profiles the person qualifies for
      jobQuery = "SELECT job_id FROM job WHERE job_code = " + tokens[0];
      roughJobsData = executeQuery(jobQuery, 1);
      for(String aJob: roughJobsData) {
        result = aJob + " " + aJobProfile.substring(2);
        qualifiedJobs.add(result);
      }
    }
    return qualifiedJobs;
  }

  void drawJobAppliedForScreen() {
    ArrayList<String> updateList;
    String[] jobToApplyToTokens = jobToApplyToData.split(" ");
    String[] personDataTokens = interestedPersonsData.split(" ");

    getContentPane().removeAll();

    setLayout(new GridLayout( 2, 1) );

    jobToApplyToTokens = jobToApplyToData.split(" ");
    updateList = new ArrayList<>(1);
    updateList.add("INSERT INTO job_application VALUES(" + nextDBIndex("application_id", "job_application") + ", " + personDataTokens[0] + ", " + jobToApplyToTokens[0] + ", 'applied')");
    executeDataManipulationStatement(updateList);

    infoLabel = new JLabel(interestedPersonsData + " has applied for the job " + jobToApplyToData);
    infoPanel = new JPanel();
    infoPanel.add(infoLabel);
    add(infoPanel);

    returnButton = new JButton("Return to job hunter menu");
    returnButton.addActionListener(buttonClickHandler);
    returnPanel = new JPanel();
    returnPanel.add(returnButton);
    add(returnPanel);

    revalidate();
    repaint();
  }

  int nextDBIndex(String interestedAttribute, String interestedTable) {
    int nextIndex;
    String currentIndexQuery = "SELECT MAX(" + interestedAttribute + ") FROM " + interestedTable;
    ArrayList<String> currentIndex = executeQuery(currentIndexQuery, 1);
    try{
      nextIndex = Integer.parseInt(currentIndex.get(0)) + 1;
    }
    catch(NumberFormatException e) {
      nextIndex = 1;
    }
    return nextIndex;
  }

  void drawJobOffersScreen() {
    getContentPane().removeAll();

    setLayout(new GridLayout( 3, 1) );

    mainTitle = new JLabel("Current Job offers for " + interestedPersonsData);
    add(mainTitle);

    String[] personTokens = interestedPersonsData.split(" ");

    String jobOffersQuery = "SELECT ja.application_id || ' ' || jp.title || ' ' || c.name from job_application ja, job j, job_profile jp, company c where ja.person_id = " + personTokens[0] + " AND ja.job_id = j.job_id and jp.job_code = j.job_code and c.company_id = j.company_id and ja.status = 'offered'";
    ArrayList<String> queryResults = executeQuery(jobOffersQuery, 1);

    jobOffersPanel = new JPanel();
    add(jobOffersPanel);

    lowerPanel = new JPanel();
    exitButton = new JButton("Go Back To Action Select Menu");
    exitButton.addActionListener(buttonClickHandler);
    lowerPanel.add(exitButton);
    add(lowerPanel);

    if(queryResults.size() == 0) {
      noOffersLabel = new JLabel("Currently, no offers exist.");
      jobOffersPanel.add(noOffersLabel);
    }
    else {
      jobOffersComboBox = new JComboBox<>();
      for(String anOffer: queryResults) {
        jobOffersComboBox.addItem(anOffer);
      }
      jobOffersPanel.add(jobOffersComboBox);
      acceptButton = new JButton("Accept selected job");
      acceptButton.addActionListener(buttonClickHandler);
      lowerPanel.add(acceptButton);
    }

    revalidate();
    repaint();
  }

  void drawAcceptApplicantMenu() {
    getContentPane().removeAll();

    setLayout(new GridLayout( 3, 1) );

    mainTitle = new JLabel("Select the company you manage");
    add(mainTitle);

    String queryCompanies = "SELECT company_id || ' ' || name FROM company";
    ArrayList<String> listOfCompanies = executeQuery(queryCompanies, 1);

    companiesListPanel = new JPanel();

    lowerPanel = new JPanel();
    exitButton = new JButton("Go Back To Main Menu");
    exitButton.addActionListener(buttonClickHandler);
    lowerPanel.add(exitButton);

    if(listOfCompanies.size() == 0) {
      noCompaniesLabel = new JLabel("No companies available.");
      companiesListPanel.add(noCompaniesLabel);
    }
    else{
      companiesComboBox = new JComboBox<>();
      for(String aCompany: listOfCompanies) {
        companiesComboBox.addItem(aCompany);
      }
      companiesListPanel.add(companiesComboBox);

      applyButton = new JButton("Select company");
      applyButton.addActionListener(buttonClickHandler);;
      lowerPanel.add(applyButton);
    }
    add(companiesListPanel);
    add(lowerPanel);

    revalidate();
    repaint();
  }

  void drawChooseApplicantScreen() {
    String[] companyTokens = interestedCompanyData.split(" ");

    getContentPane().removeAll();

    setLayout(new GridLayout( 4, 1) );

    mainTitle = new JLabel("Choose an applicant");
    add(mainTitle);

    middlePanel = new JPanel();
    middlePanel.setLayout(new GridLayout( 1, 2) );
    applicantDataArea = new JTextArea();
    applicantDataArea.setWrapStyleWord(true);
    applicantDataArea.setLineWrap(true);
    applicantDataArea.setOpaque(false);
    applicantDataArea.setEditable(false);
    applicantDataArea.setFocusable(false);
    middlePanel.add(applicantDataArea);
    rightPanel = new JPanel();
    add(rightPanel);

    String applicantsQuery = "SELECT ja.application_id || ' ' || p.first_name || ' ' || p.last_name FROM person p, job_application ja, job j WHERE ja.job_id = j.job_id AND j.company_id = " + companyTokens[0] + " AND p.person_id = ja.person_id AND ja.status = 'applied'";
    ArrayList<String> listOfApplicants = executeQuery(applicantsQuery, 1);

    lowerPanel = new JPanel();
    exitButton = new JButton("Go Back To Manager Services Menu");
    exitButton.addActionListener(buttonClickHandler);
    lowerPanel.add(exitButton);

    if(listOfApplicants.size() == 0) {
      noApplicantsLabel = new JLabel("There are currently no applicants.");
      rightPanel.add(noApplicantsLabel);
    }
    else{
      applicantsComboBox = new JComboBox<>();
      for(String anApplicant: listOfApplicants) {
        applicantsComboBox.addItem(anApplicant);
      }
      rightPanel.add(applicantsComboBox);

      showInfoButton = new JButton("Show applicant information");
      rightPanel.add(showInfoButton);

      rejectButton = new JButton("Reject Applicant");
      rejectButton.addActionListener(buttonClickHandler);
      lowerPanel.add(rejectButton);
      acceptApplicantButton = new JButton("Accept Applicant");
      acceptApplicantButton.addActionListener(buttonClickHandler);
      lowerPanel.add(acceptApplicantButton);
    }
    add(middlePanel);
    add(lowerPanel);

    revalidate();
    repaint();
  }

  void drawKSkillsMissingScreen() {
    getContentPane().removeAll();

    setLayout(new GridLayout( 5, 1) );

    chooseJobPanel = new JPanel();
    chooseJobLabel = new JLabel("Choose the job to fill");
    chooseJobPanel.add(chooseJobLabel);
    add(chooseJobPanel);

    String[] companyTokens = interestedCompanyData.split(" ");
    String jobsQuery = "SELECT distinct j.job_id || ' ' || jp.job_code || ' ' || jp.title FROM job j, job_profile jp WHERE j.job_code = jp.job_code AND j.company_id = 1" + companyTokens[0];
    ArrayList<String> jobsForCompanyList = executeQuery(jobsQuery, 1);

    lowerPanel = new JPanel();
    exitButton = new JButton("Go Back to Manager Services Menu");
    exitButton.addActionListener(buttonClickHandler);
    lowerPanel.add(exitButton);

    jobSelectionPanel = new JPanel();
    if(jobsForCompanyList.size() == 0) {
      noJobsLabel = new JLabel("No jobs currently available.");
      jobSelectionPanel.add(noJobsLabel);
    }
    else{
      jobsComboBox = new JComboBox<>();
      for(String aJob: jobsForCompanyList) {
        jobsComboBox.addItem(aJob);
      }
      jobSelectionPanel.add(jobsComboBox);

      seePersonsButton = new JButton("View Qualified Persons");
      seePersonsButton.addActionListener(buttonClickHandler);
      lowerPanel.add(seePersonsButton);
    }
    createJobButton = new JButton("Create New Job");
    jobSelectionPanel.add(createJobButton);
    add(jobSelectionPanel);

    kQuestionPanel = new JPanel();
    kQuestionPanel.setLayout(new GridLayout( 2, 1) );
    kQuestionLabel = new JLabel("How many of the required skills for the job above");
    kQuestionLabel2 = new JLabel("are acceptable to be missing by an applicant?");
    kQuestionPanel.add(kQuestionLabel);
    kQuestionPanel.add(kQuestionLabel2);
    add(kQuestionPanel);

    kNumberPanel = new JPanel();
    kNumberComboBox = new JComboBox<>();
    for(int i = 1; i <= 5; i++) {
      kNumberComboBox.addItem(i);
    }
    kNumberPanel.add(kNumberComboBox);
    add(kNumberPanel);

    add(lowerPanel);

    revalidate();
    repaint();
  }

  void drawQualifiedPersonsScreen() {
    getContentPane().removeAll();

    String[] jobInfoTokens = interestedJobData.split(" ");

    setLayout(new GridLayout( 3, 1) );

    mainTitle = new JLabel("Qualified Persons for job " + interestedJobData + " with up to " + interestedKData + " missing skills");
    add(mainTitle);

    String qualifiedPersonsQuery = "WITH required_ks AS(SELECT ks_code FROM jp_ks WHERE job_code = " + jobInfoTokens[1] + ")SELECT * FROM(SELECT p.person_id || ' ' || p.first_name || ' ' || p.last_name AS name, p.email_address, (SELECT COUNT(DISTINCT ks_code)FROM (SELECT ks_code FROM required_ks MINUS SELECT ks_code FROM person_ks pks WHERE pks.person_id = p.person_id)) as number_missing FROM person p) WHERE number_missing <= " + interestedKData + "ORDER BY number_missing ASC";
    ArrayList<String> queryResult = executeQuery(qualifiedPersonsQuery, 1);

    lowerPanel = new JPanel();
    exitButton = new JButton("Go back to select job");
    exitButton.addActionListener(buttonClickHandler);
    lowerPanel.add(exitButton);

    qualifiedPersonsPanel = new JPanel();
    if(queryResult.size() == 0 ) {
      noResultsLabel = new JLabel("No persons meet the skill requirement for the selected job.");
      qualifiedPersonsPanel.add(noResultsLabel);
    }
    else {
      qualifiedPersonsView = new DefaultListModel<String>();
      for(String aPerson: queryResult) {
        qualifiedPersonsView.addElement(aPerson);
      }
      qualifiedPersonsList = new JList<String>(qualifiedPersonsView);
      qualifiedPersonsList.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
      qualifiedPersonsPanel.add(qualifiedPersonsList);

      makeOfferButton = new JButton("Make selected person a job offer");
      makeOfferButton.addActionListener(buttonClickHandler);
      lowerPanel.add(makeOfferButton);
    }
    add(qualifiedPersonsPanel);
    add(lowerPanel);

    revalidate();
    repaint();
  }

  void drawQueriesTestMenu() {
    getContentPane().removeAll();

    setLayout(new GridLayout( 8, 1) );

    mainTitle = new JLabel("Queries Test Menu");
    add(mainTitle);

    // Build and add first row of query buttons
    query1Button = new JButton( "1" );
    query1Button.addActionListener(buttonClickHandler);
    query2Button = new JButton( "2" );
    query2Button.addActionListener(buttonClickHandler);
    query3Button = new JButton( "3" );
    query3Button.addActionListener(buttonClickHandler);
    query4Button = new JButton( "4" );
    query4Button.addActionListener(buttonClickHandler);
    query5Button = new JButton( "5" );
    query5Button.addActionListener(buttonClickHandler);
    queriesRow1 = new JPanel();
    queriesRow1.add(query1Button);
    queriesRow1.add(query2Button);
    queriesRow1.add(query3Button);
    queriesRow1.add(query4Button);
    queriesRow1.add(query5Button);
    add(queriesRow1);

    // Build and add second row of query buttons
    query6Button = new JButton( "6" );
    query6Button.addActionListener(buttonClickHandler);
    query7Button = new JButton( "7" );
    query7Button.addActionListener(buttonClickHandler);
    query8Button = new JButton( "8" );
    query8Button.addActionListener(buttonClickHandler);
    query9Button = new JButton( "9" );
    query9Button.addActionListener(buttonClickHandler);
    query10Button = new JButton( "10" );
    query10Button.addActionListener(buttonClickHandler);
    queriesRow2 = new JPanel();
    queriesRow2.add(query6Button);
    queriesRow2.add(query7Button);
    queriesRow2.add(query8Button);
    queriesRow2.add(query9Button);
    queriesRow2.add(query10Button);
    add(queriesRow2);

    // Build and add third row of query buttons
    query11Button = new JButton( "11" );
    query11Button.addActionListener(buttonClickHandler);
    query12Button = new JButton( "12" );
    query12Button.addActionListener(buttonClickHandler);
    query13Button = new JButton( "13" );
    query13Button.addActionListener(buttonClickHandler);
    query14Button = new JButton( "14" );
    query14Button.addActionListener(buttonClickHandler);
    query15Button = new JButton( "15" );
    query15Button.addActionListener(buttonClickHandler);
    queriesRow3 = new JPanel();
    queriesRow3.add(query11Button);
    queriesRow3.add(query12Button);
    queriesRow3.add(query13Button);
    queriesRow3.add(query14Button);
    queriesRow3.add(query15Button);
    add(queriesRow3);

    // Build and add fourth row of query buttons
    query16Button = new JButton( "16" );
    query16Button.addActionListener(buttonClickHandler);
    query17Button = new JButton( "17" );
    query17Button.addActionListener(buttonClickHandler);
    query18Button = new JButton( "18" );
    query18Button.addActionListener(buttonClickHandler);
    query19Button = new JButton( "19" );
    query19Button.addActionListener(buttonClickHandler);
    query20Button = new JButton( "20" );
    query20Button.addActionListener(buttonClickHandler);
    queriesRow4 = new JPanel();
    queriesRow4.add(query16Button);
    queriesRow4.add(query17Button);
    queriesRow4.add(query18Button);
    queriesRow4.add(query19Button);
    queriesRow4.add(query20Button);
    add(queriesRow4);

    // Build and add fifth row of query buttons
    query21Button = new JButton( "21" );
    query21Button.addActionListener(buttonClickHandler);
    query22Button = new JButton( "22" );
    query22Button.addActionListener(buttonClickHandler);
    query23Button = new JButton( "23" );
    query23Button.addActionListener(buttonClickHandler);
    query24Button = new JButton( "24" );
    query24Button.addActionListener(buttonClickHandler);
    query25Button = new JButton( "25" );
    query25Button.addActionListener(buttonClickHandler);
    queriesRow5 = new JPanel();
    queriesRow5.add(query21Button);
    queriesRow5.add(query22Button);
    queriesRow5.add(query23Button);
    queriesRow5.add(query24Button);
    queriesRow5.add(query25Button);
    add(queriesRow5);

    // Build and add sixth row of query buttons
    query26Button = new JButton( "26" );
    query26Button.addActionListener(buttonClickHandler);
    query27Button = new JButton( "27" );
    query27Button.setEnabled(false);
    query28Button = new JButton( "28" );
    query28Button.setEnabled(false);
    query29Button = new JButton( "29" );
    query29Button.addActionListener(buttonClickHandler);
    query30Button = new JButton( "30" );
    query30Button.addActionListener(buttonClickHandler);
    queriesRow6 = new JPanel();
    queriesRow6.add(query26Button);
    queriesRow6.add(query27Button);
    queriesRow6.add(query28Button);
    queriesRow6.add(query29Button);
    queriesRow6.add(query30Button);
    add(queriesRow6);

    updateButton = new JButton("UPDATE DB");
    updateButton.addActionListener(buttonClickHandler);
    exitButton = new JButton("Go Back To Main Menu");
    exitButton.addActionListener(buttonClickHandler);
    lowerPanel = new JPanel();
    lowerPanel.add(updateButton);
    lowerPanel.add(exitButton);
    add(lowerPanel);

    revalidate();
    repaint();
  }

  void updateDB() {
    getContentPane().removeAll();

    setLayout(new GridLayout( 4, 1) );

    clearDataButton = new JButton("Drop all rows from all tables");
    clearDataButton.addActionListener(buttonClickHandler);
    add(clearDataButton);

    customInsertionButton = new JButton("Execute an insertion script from file...");
    customInsertionButton.addActionListener(buttonClickHandler);
    add(customInsertionButton);

    randomDataGenerationButton = new JButton("Generate random data for a table");
    randomDataGenerationButton.addActionListener(buttonClickHandler);
    add(randomDataGenerationButton);

    goBackButton = new JButton("Go Back To Options Menu");
    goBackButton.addActionListener(buttonClickHandler);
    add(goBackButton);

    revalidate();
    repaint();
  }

  void drawQueryPerformScreen(String whichQuery) {
    ArrayList<String> results;
    int resultsColumnNumber = 1;

    getContentPane().removeAll();

    setLayout(new GridLayout( 2, 1) );
    topStuffPanel = new JPanel();
    topStuffPanel.setLayout(new GridLayout( 2, 1));

    topOfTheTopStuffPanel = new JPanel();
    topOfTheTopStuffPanel.setLayout(new GridLayout( 3, 1));

    mainTitle = new JLabel("Query " + whichQuery);
    topOfTheTopStuffPanel.add(mainTitle);

    queryData = new ArrayList<>(7);
    queryDataForDisplay = "";

    File queryFile = new File("./queries/" + whichQuery);

    try {
      buffReader = new BufferedReader(new FileReader(queryFile));

      StringBuilder partiallyLoadedQueryData = new StringBuilder();
      String line = buffReader.readLine();
      int whichDataSet = 0;
      while (line != null) {
        while(!line.matches("!!!")){
          partiallyLoadedQueryData.append(line);
          partiallyLoadedQueryData.append(" ");
          if(whichDataSet==QUERY) {
            queryDataForDisplay += line + "\n";
          }
          line = buffReader.readLine();
        }
        queryData.add(partiallyLoadedQueryData.toString());
        partiallyLoadedQueryData = new StringBuilder();
        if(whichDataSet==COMBOBOXCOUNT) {
          try {
            numberOfComboBoxes = Integer.parseInt(queryData.get(COMBOBOXCOUNT).trim());
          }
          catch(NumberFormatException e) {
            e.printStackTrace();
          }
          if(numberOfComboBoxes == 0) {
            break;
          }
        }
        line = buffReader.readLine();
        whichDataSet++;
      }
    } catch(FileNotFoundException e) {
      e.printStackTrace();
    } catch(IOException e) {
      e.printStackTrace();
    }  

    queryProblemLabel = new JTextArea(queryData.get(DESCRIPTION));
    queryProblemLabel.setWrapStyleWord(true);
    queryProblemLabel.setLineWrap(true);
    queryProblemLabel.setOpaque(false);
    queryProblemLabel.setEditable(false);
    queryProblemLabel.setFocusable(false);
    topOfTheTopStuffPanel.add(queryProblemLabel);

    lowerPanel = new JPanel();
    showQueryButton = new JButton("Show Query");
    showQueryButton.addActionListener(buttonClickHandler);
    executeQueryButton = new JButton("Execute Query");
    executeQueryButton.addActionListener(buttonClickHandler);
    goBackButton = new JButton("Go Back To Options Menu");
    goBackButton.addActionListener(buttonClickHandler);
    lowerPanel.add(showQueryButton);
    lowerPanel.add(executeQueryButton);
    lowerPanel.add(goBackButton);
    topOfTheTopStuffPanel.add(lowerPanel);
    topStuffPanel.add(topOfTheTopStuffPanel);

    if(numberOfComboBoxes != 0) {
      queryQuestionPanel = new JPanel();
      comboBoxPanels = new ArrayList<>(numberOfComboBoxes);
      queryQuestionsComboBoxes = new ArrayList<>(numberOfComboBoxes);

      for(int comboBoxIndex = 0; comboBoxIndex < numberOfComboBoxes; comboBoxIndex++) {
        JPanel aComboBoxPanel = new JPanel();
        aComboBoxPanel.add(new JLabel(queryData.get(EXPLANATION + (comboBoxIndex*3))));
        try{
          resultsColumnNumber = Integer.parseInt(queryData.get(COLUMNNUMBER + (comboBoxIndex*3)).trim());
        }
        catch(NumberFormatException e) {
          e.printStackTrace();
        }
        results = executeQuery(queryData.get(COMBOQUERY + (comboBoxIndex*3)), resultsColumnNumber);
        JComboBox<String> aComboBox = new JComboBox<>();
        for(String aResult: results) {
          aComboBox.addItem(aResult);
        }
        queryQuestionsComboBoxes.add(aComboBox);
        aComboBoxPanel.add(aComboBox);
        comboBoxPanels.add(aComboBoxPanel);
      }

      for(int index = 0; index < numberOfComboBoxes; index++) {
        queryQuestionPanel.add(comboBoxPanels.get(index));
      }

      topStuffPanel.add(queryQuestionPanel);
    }

    add(topStuffPanel);

    textArea = new JTextArea ();
    textArea.setEditable(false);
    scroll = new JScrollPane (textArea, JScrollPane.VERTICAL_SCROLLBAR_ALWAYS, JScrollPane.HORIZONTAL_SCROLLBAR_ALWAYS);
    add(scroll);

    revalidate();
    repaint();
  }

  void insertFromFile() {
    String currentLineOfInput;

    ArrayList<String> updatesList = new ArrayList<>();
    String insertionStatement = "";
    File queryFile;

    JFileChooser chooser = new JFileChooser();
    FileNameExtensionFilter filter = new FileNameExtensionFilter(
        "xSQL files", "xsql");
    chooser.setFileFilter(filter);
    chooser.setCurrentDirectory(new File("./setup/"));

    getContentPane().removeAll();
    revalidate();
    repaint();

    int returnVal = chooser.showOpenDialog(this);
    if(returnVal == JFileChooser.APPROVE_OPTION) {
      String pathToFile = chooser.getSelectedFile().getAbsolutePath();

      queryFile = new File(pathToFile);

      try {
        buffReader = new BufferedReader(new FileReader(queryFile));

        while((currentLineOfInput = buffReader.readLine()) != null) {
          //insertionStatement += currentLineOfInput + " ";
          updatesList.add(currentLineOfInput);
        }
      }
      catch(FileNotFoundException e) {
        e.printStackTrace();
      } 
      catch(IOException e) {
        e.printStackTrace();
      } 
      executeDataManipulationStatement(updatesList);
    }   
  }

  void drawGenerateDataScreen() {

    getContentPane().removeAll();
    
    //TODOs

    revalidate();
    repaint();
  }

  void clearData() {
    String currentLineOfInput;

    ArrayList<String> updatesList = new ArrayList<>();
    String insertionStatement = "";
    File queryFile = new File("./setup/clearData.xsql");

    getContentPane().removeAll();
    revalidate();
    repaint();

    try {
      buffReader = new BufferedReader(new FileReader(queryFile));

      while((currentLineOfInput = buffReader.readLine()) != null) {
        //insertionStatement += currentLineOfInput + " ";
        updatesList.add(currentLineOfInput);
      }
    }
    catch(FileNotFoundException e) {
      e.printStackTrace();
    } 
    catch(IOException e) {
      e.printStackTrace();
    } 

    executeDataManipulationStatement(updatesList);
  }

  ArrayList<String> executeQuery(String query, int resultAttribute) {

    OracleDataSource db       = null;
    Connection conn           = null;
    Statement stmt            = null;
    ResultSet rset            = null;
    ArrayList<String> results = new ArrayList<>();

    try{
      db = new OracleDataSource();
      db.setURL("jdbc:oracle:thin:@//dbsvcs.cs.uno.edu:1521/ORCL.CS.UNO.EDU");
      db.setUser(username);
      db.setPassword(password);
      conn = db.getConnection();

      stmt = conn.createStatement();

      rset = stmt.executeQuery(query);
      ResultSetMetaData rSMD = rset.getMetaData();

      String columnType = rSMD.getColumnTypeName(resultAttribute);

      while(rset.next()) {
        if(columnType.matches("VARCHAR2")) {
          results.add(rset.getString(resultAttribute));
        }
        else if(columnType.matches("NUMBER")) {
          results.add("" + rset.getInt(resultAttribute));
        }
      }

      stmt.close();
      conn.close();

    } catch (SQLException e) {
      e.printStackTrace();
    }

    return results;
  }

  void executeDataManipulationStatement(ArrayList<String> listOfStatements) {
    
    String currentStatement;
    String textAreaText = "";

    OracleDataSource db       = null;
    Connection conn           = null;
    Statement stmt            = null;

    try{
      db = new OracleDataSource();
      db.setURL("jdbc:oracle:thin:@//dbsvcs.cs.uno.edu:1521/ORCL.CS.UNO.EDU");
      db.setUser(username);
      db.setPassword(password);

      conn = db.getConnection();
      
      stmt = conn.createStatement();
      for(int currentStatementIndex = 0; currentStatementIndex<listOfStatements.size(); currentStatementIndex++) {
        currentStatement = listOfStatements.get(currentStatementIndex);
        if(!currentStatement.equals("")) {
          try {
            stmt.executeUpdate(currentStatement);
          }
          catch(SQLException e) {
            String error = "On execution of statement:\n\n" + currentStatement + "\n\nException thrown: " + e.getMessage() + "\n";
            System.out.println(error);
          }
        }
      }
    } 
    catch (SQLException e) {
      e.printStackTrace();
    }
  }

  ArrayList<String> executePreparedStatement(String query, String[] comboBoxValues, int[] settersMap) {

    OracleDataSource db       = null;
    Connection conn           = null;
    PreparedStatement pStmt   = null;
    ResultSet rset            = null;
    String aResultRow         = null;
    String columnType         = null;
    ArrayList<String> results = new ArrayList<>();

    try{
      db = new OracleDataSource();
      db.setURL("jdbc:oracle:thin:@//dbsvcs.cs.uno.edu:1521/ORCL.CS.UNO.EDU");
      db.setUser(username);
      db.setPassword(password);
      conn = db.getConnection();

      pStmt = conn.prepareStatement(query);
      if(comboBoxValues != null) {
        for(int whichUnknown = 0; whichUnknown<settersMap.length; whichUnknown++) {
          try {
            int numberValueOfUknown = Integer.parseInt(comboBoxValues[(settersMap[whichUnknown]-1)].trim());
            pStmt.setInt((whichUnknown+1), numberValueOfUknown);
          }
          catch(NumberFormatException e) {
            pStmt.setString((whichUnknown+1), comboBoxValues[(settersMap[whichUnknown]-1)]);
          }
        }
      }

      rset = pStmt.executeQuery();

      ResultSetMetaData rSMD = rset.getMetaData();
      int columnsCount = rSMD.getColumnCount();

      aResultRow = "";
      for(int columnIndex = 1; columnIndex <= columnsCount; columnIndex++) {
        aResultRow += rSMD.getColumnName(columnIndex) + "\t";
      }
      results.add(aResultRow);
      results.add("\n");

      while(rset.next()) {
        aResultRow = "";
        for(int columnIndex = 1; columnIndex <= columnsCount; columnIndex++) {
          columnType = rSMD.getColumnTypeName(columnIndex);
          if(columnType.matches("VARCHAR2")) {
            aResultRow += rset.getString(columnIndex) + "\t";
          }
          else if(columnType.matches("NUMBER")) {
            aResultRow += rset.getInt(columnIndex) + "\t";
          }
        }
        results.add(aResultRow);
      }

      pStmt.close();
      conn.close();

    } catch (SQLException e) {
      e.printStackTrace();
    }

    return results;
  }

  private class ButtonClickHandler implements ActionListener
  {
    public void actionPerformed( ActionEvent event )
    {
      JButton buttonThatWasClicked = (JButton)event.getSource();

      if(buttonThatWasClicked.getText() == "EXIT") {
        System.exit( 0 );
      }
      else if(buttonThatWasClicked.getText() == "Options") {
        drawQueriesTestMenu();
      } 
      else if(buttonThatWasClicked.getText() == "UPDATE DB") {
        updateDB();
      } 
      else if(buttonThatWasClicked.getText() == "Show Query") {
        textArea.setText(queryDataForDisplay);
      }
      else if(buttonThatWasClicked.getText() == "Execute Query") {
        String[] comboBoxResults = null;
        int[] settersMap = null;

        if(numberOfComboBoxes > 0) {
          String[] settersMapTokens = queryData.get(UNKNOWNSMAP).split(" ");

          settersMap = new int[settersMapTokens.length];
          try {
            for(int i = 0; i<settersMapTokens.length; i++) {
              settersMap[i] = Integer.parseInt(settersMapTokens[i].trim());
            }
          }
          catch(NumberFormatException e) {
            e.printStackTrace();
          }

          comboBoxResults = new String[numberOfComboBoxes];
          
          for(int index = 0; index < numberOfComboBoxes; index++) {
            comboBoxResults[index] = (String)queryQuestionsComboBoxes.get(index).getSelectedItem();
          }
        }

        ArrayList<String> queryResults = executePreparedStatement(queryData.get(QUERY), comboBoxResults, settersMap);

        textArea.setText(null);

        for(String aResult: queryResults) {
          aResult += "\n";
          textArea.append(aResult);
        }
      }
      else if(buttonThatWasClicked.getText() == "Go Back To Main Menu") {
        drawMainMenu();
      }
      else if(buttonThatWasClicked.getText() == "Go Back To Options Menu") {
        drawQueriesTestMenu();
      }
      else if(buttonThatWasClicked.getText() == "Drop all rows from all tables") {
        clearData();
        updateDB(); 
      }
      else if(buttonThatWasClicked.getText() == "Execute an insertion script from file...") {
        insertFromFile();
        updateDB(); 
      }
      else if(buttonThatWasClicked.getText() == "Generate random data for a table") {
        drawGenerateDataScreen();
      }
      else if(buttonThatWasClicked.getText() == "Worker Services" || buttonThatWasClicked.getText() == "Go Back To Person Select Menu") {
        drawSelectPersonScreen();
      }
      else if(buttonThatWasClicked.getText() == "Select this person") {
        interestedPersonsData = (String)personsComboBox.getSelectedItem();
        drawPersonActionsScreen();
      }
      else if(buttonThatWasClicked.getText() == "Add a new person") {
        drawCreatePersonScreen();
      }
      else if(buttonThatWasClicked.getText() == "Add person") {
        String firstName = firstNameField.getText();
        String lastName = lastNameField.getText();
        String emailAddress = emailField.getText();
        String state = "'" + stateField.getText() + "'";
        // If non-nullable fields are left empty, do not accept this input
        if(firstName.matches("") || lastName.matches("") || emailAddress.matches("") || state.length() > 4) {
          JOptionPane.showMessageDialog(null, "Fields 'first name', 'last name', 'email address' must be given a value!!! State must be 2 letter abbreviation.");
        }
        else{
          String middleName = "'" + middleNameField.getText() + "'";
          if(middleName.matches("''")) {
            middleName = null;
          }
          Integer streetNumber;
          try {
            streetNumber = Integer.parseInt(addyNumberField.getText());
          }
          catch(NumberFormatException e) {
            streetNumber = null;
          }
          String streetName = "'" + addyNameField.getText() + "'";
          if(streetName.matches("''")) {
            streetName = null;
          }
          Integer aptNumber;
          try {
            aptNumber = Integer.parseInt(aptNumberField.getText());
          }
          catch(NumberFormatException e) {
            aptNumber = null;
          }
          String city = "'" + cityField.getText() + "'";
          if(city.matches("''")) {
            city = null;
          }
          if(state.matches("''")) {
            state = null;
          }
          Integer zipCode;
          try {
            zipCode = Integer.parseInt(zipcodeField.getText());
          }
          catch(NumberFormatException e) {
            zipCode = null;
          }
          String gender = (String)genderComboBox.getSelectedItem();

          int personId = nextDBIndex("person_id", "person");

          String insertPersonStatement = "INSERT INTO person VALUES (" + personId + ", '" + firstName + "', "+ middleName + ", '" +lastName + "', '" + emailAddress + "', " + streetNumber + ", " + streetName + ", " + aptNumber + ", " + city + ", " + state + ", " + zipCode + ", '" + gender + "')";
          ArrayList<String> insertionList = new ArrayList<>();
          insertionList.add(insertPersonStatement);

          executeDataManipulationStatement(insertionList);

          personStore = new Person(personId, firstName, middleName, lastName, emailAddress, streetNumber, streetName, aptNumber, city, state, zipCode, gender);

          System.out.println("person_id: " + personStore.getPerson_id());
          System.out.println("first_name: " + personStore.getFirst_name());
          System.out.println("last_name: " + personStore.getLast_name());
          System.out.println("middle_name: " + personStore.getMiddle_name());
          System.out.println("email_address: " + personStore.getEmail_address());
          System.out.println("street_number: " + personStore.getStreet_number());
          System.out.println("street_name: " + personStore.getStreet_name());
          System.out.println("apt_number: " + personStore.getApt_number());
          System.out.println("city: " + personStore.getCity());
          System.out.println("state: " + personStore.getState());
          System.out.println("zip_code: " + personStore.getZip_code());
          System.out.println("gender: " + personStore.getGender());

          drawSelectPersonScreen();
        }
      }
      else if(buttonThatWasClicked.getText() == "Go Back To Action Select Menu" || buttonThatWasClicked.getText() == "Return to job hunter menu") {
        drawPersonActionsScreen();
      }
      else if(buttonThatWasClicked.getText() == "See jobs this person qualifies for") {
        drawViewQualifiedJobsScreen();
      }
      else if(buttonThatWasClicked.getText() == "Apply for selected job") {
        jobToApplyToData = (String)qualifiedJobsComboBox.getSelectedItem();
        drawJobAppliedForScreen();
      }
      else if(buttonThatWasClicked.getText() == "View current job offers") {
        drawJobOffersScreen();
      }
      else if(buttonThatWasClicked.getText() == "Manager Services" || buttonThatWasClicked.getText() == "Go Back To Company Select Menu") {
        drawAcceptApplicantMenu();
      }
      else if(buttonThatWasClicked.getText() == "Find the right person for a job profile" || buttonThatWasClicked.getText() == "Go back to select job") {
        drawKSkillsMissingScreen();
      }
      else if(buttonThatWasClicked.getText() == "View Qualified Persons") {
        interestedJobData = (String)jobsComboBox.getSelectedItem();
        interestedKData = (Integer)kNumberComboBox.getSelectedItem();
        drawQualifiedPersonsScreen();
      }
      else if(buttonThatWasClicked.getText() == "Make selected person a job offer") {
        int selectedIndex = qualifiedPersonsList.getSelectedIndex();
        String personToMakeOfferTo = qualifiedPersonsView.getElementAt(selectedIndex);
        String[] personTokens = personToMakeOfferTo.split(" ");
        String[] companyTokens = interestedCompanyData.split(" ");
        //make update to job_application table
        ArrayList<String> updateList = new ArrayList<>(1);
        updateList.add("INSERT INTO job_application VALUES(" + nextDBIndex("application_id", "job_application") + ", " + personTokens[0] + ", " + companyTokens[0] + ", 'offered')");
        executeDataManipulationStatement(updateList);
        //remove list item from list
        qualifiedPersonsView.remove(selectedIndex);

      }
      else if(buttonThatWasClicked.getText() == "Job Assistance Services") {
        drawJobAssistanceServicesScreen();
      }
      else if(buttonThatWasClicked.getText() == "Evaluate the opportunities in all business sectors" || buttonThatWasClicked.getText() == "Go back to select sector") {
        drawSectorsOpportunitiesScreen();
      }
      else if(buttonThatWasClicked.getText() == "Select this sector") {
        interestedSector = (String)businessSectorsComboBox.getSelectedItem();
        drawJobOpportunitiesScreen();
      }
      else if(buttonThatWasClicked.getText() == "Select company") {
        interestedCompanyData = (String)companiesComboBox.getSelectedItem();
        drawManagerServicesScreen();
      }
      else if(buttonThatWasClicked.getText() == "Go Back to Manager Services Menu") {
        drawManagerServicesScreen();
      }
      else if(buttonThatWasClicked.getText() == "Accept an applicant") {
        drawChooseApplicantScreen();
      }
      else if(buttonThatWasClicked.getText() == "Go Back To Manager Services Menu") {
        drawManagerServicesScreen();
      }
      else if(buttonThatWasClicked.getText() == "Reject Applicant") {
        String[] applicantTokens;
        interestedApplicantData = (String)applicantsComboBox.getSelectedItem();
        applicantTokens = interestedApplicantData.split(" ");
        String updateApplicantStatement = "UPDATE job_application SET status = 'rejected' WHERE application_id = " + applicantTokens[0];
        ArrayList<String> updateList = new ArrayList<>();
        updateList.add(updateApplicantStatement);
        executeDataManipulationStatement(updateList);
        drawChooseApplicantScreen();
      }
      else if(buttonThatWasClicked.getText() == "Accept Applicant") {
        String[] applicantTokens;
        interestedApplicantData = (String)applicantsComboBox.getSelectedItem();
        applicantTokens = interestedApplicantData.split(" ");
        String updateApplicantStatement = "UPDATE job_application SET status = 'offered' WHERE application_id = " + applicantTokens[0];
        ArrayList<String> updateList = new ArrayList<>();
        updateList.add(updateApplicantStatement);
        executeDataManipulationStatement(updateList);
        drawChooseApplicantScreen();
      }
      else if(buttonThatWasClicked.getText() == "Accept selected job") {
        String[] jobOfferTokens;
        jobOfferedData = (String)jobOffersComboBox.getSelectedItem();
        jobOfferTokens = jobOfferedData.split(" ");
        String updateApplicantStatement = "UPDATE job_application SET status = 'accepted' WHERE application_id = " + jobOfferTokens[0];
        ArrayList<String> updateList = new ArrayList<>();
        updateList.add(updateApplicantStatement);
        executeDataManipulationStatement(updateList);
        drawJobOffersScreen();
      }
      else {
        drawQueryPerformScreen(buttonThatWasClicked.getText());
      }
    }
  }
}

class Person {
  private int person_id;
  private String first_name;
  private String middle_name;
  private String last_name;
  private String email_address;
  private Integer street_number;
  private String street_name;
  private Integer apt_number;
  private String city;
  private String state;
  private Integer zip_code;
  private String gender;

  Person(int person_id, String first_name, String middle_name, String last_name, String email_address, Integer street_number, String street_name, Integer apt_number, String city, String state, Integer zip_code, String gender) {
    this.person_id = person_id;
    this.first_name = first_name;
    this.middle_name = middle_name;
    this.last_name = last_name;
    this.email_address = email_address;
    this.street_number = street_number;
    this.street_name = street_name;
    this.apt_number = apt_number;
    this.city = city;
    this.state = state;
    this.zip_code = zip_code;
    this.gender = gender;
  }

  void setPerson_id(int person_id) {
    this.person_id = person_id;
  }

  int getPerson_id() {
    return person_id;
  }

  void setFirst_name(String first_name) {
    this.first_name = first_name;
  }

  String getFirst_name() {
    return first_name;
  }

  void setMiddle_name(String middle_name) {
    this.middle_name = middle_name;
  }

  String getMiddle_name() {
    return middle_name;
  }

  void setLast_name(String last_name) {
    this.last_name = last_name;
  }

  String getLast_name() {
    return last_name;
  }

  void setEmail_address(String email_address) {
    this.email_address = email_address;
  }

  String getEmail_address() {
    return email_address;
  }

  void setStreet_number(Integer street_number) {
    this.street_number = street_number;
  }

  Integer getStreet_number() {
    return street_number;
  }

  void setStreet_name(String street_name) {
    this.street_name = street_name;
  }

  String getStreet_name() {
    return street_name;
  }

  void setApt_number(Integer apt_number) {
    this.apt_number = apt_number;
  }

  Integer getApt_number() {
    return apt_number;
  }

  void setCity(String city) {
    this.city = city;
  }

  String getCity() {
    return city;
  }

  void setState(String state) {
    this.state = state;
  }

  String getState() {
    return state;
  }

  void setZip_code(Integer zip_code) {
    this.zip_code = zip_code;
  }

  Integer getZip_code() {
    return zip_code;
  }

  void setGender(String gender) {
    this.gender = gender;
  }

  String getGender() {
    return gender;
  }
}