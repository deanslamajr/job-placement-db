import java.sql.*;
import oracle.jdbc.pool.OracleDataSource;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JTextArea;
import javax.swing.JScrollPane;
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

  private BufferedReader buffReader;

  private String username;
  private String password;

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

    setLayout(new GridLayout( 8, 1) );

    mainTitle = new JLabel("Queries Demo Main Menu");
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
    queriesRow2 = new JPanel();
    queriesRow2.add(query6Button);
    queriesRow2.add(query7Button);
    queriesRow2.add(query8Button);
    queriesRow2.add(query9Button);
    queriesRow2.add(query10Button);
    add(queriesRow2);

    // Build and add third row of query buttons
    query11Button = new JButton( "11" );
    query12Button = new JButton( "12" );
    query13Button = new JButton( "13" );
    query14Button = new JButton( "14" );
    query15Button = new JButton( "15" );
    queriesRow3 = new JPanel();
    queriesRow3.add(query11Button);
    queriesRow3.add(query12Button);
    queriesRow3.add(query13Button);
    queriesRow3.add(query14Button);
    queriesRow3.add(query15Button);
    add(queriesRow3);

    // Build and add fourth row of query buttons
    query16Button = new JButton( "16" );
    query17Button = new JButton( "17" );
    query18Button = new JButton( "18" );
    query19Button = new JButton( "19" );
    query20Button = new JButton( "20" );
    queriesRow4 = new JPanel();
    queriesRow4.add(query16Button);
    queriesRow4.add(query17Button);
    queriesRow4.add(query18Button);
    queriesRow4.add(query19Button);
    queriesRow4.add(query20Button);
    add(queriesRow4);

    // Build and add fifth row of query buttons
    query21Button = new JButton( "21" );
    query22Button = new JButton( "22" );
    query23Button = new JButton( "23" );
    query24Button = new JButton( "24" );
    query25Button = new JButton( "25" );
    queriesRow5 = new JPanel();
    queriesRow5.add(query21Button);
    queriesRow5.add(query22Button);
    queriesRow5.add(query23Button);
    queriesRow5.add(query24Button);
    queriesRow5.add(query25Button);
    add(queriesRow5);

    // Build and add sixth row of query buttons
    query26Button = new JButton( "26" );
    query27Button = new JButton( "27" );
    query28Button = new JButton( "28" );
    query29Button = new JButton( "29" );
    query30Button = new JButton( "30" );
    queriesRow6 = new JPanel();
    queriesRow6.add(query26Button);
    queriesRow6.add(query27Button);
    queriesRow6.add(query28Button);
    queriesRow6.add(query29Button);
    queriesRow6.add(query30Button);
    add(queriesRow6);

    updateButton = new JButton("UPDATE DB");
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

  void drawQueryPerformScreen(String whichQuery) {
    ArrayList<String> results;
    int resultsColumnNumber = 1;

    setSize( 500, 750 );

    getContentPane().removeAll();

    setLayout(new GridLayout( 2, 1) );
    topStuffPanel = new JPanel();
    topStuffPanel.setLayout(new GridLayout( 4, 1));

    mainTitle = new JLabel("Query " + whichQuery);
    topStuffPanel.add(mainTitle);

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
    topStuffPanel.add(queryProblemLabel);

    try {
      numberOfComboBoxes = Integer.parseInt(queryData.get(COMBOBOXCOUNT).trim());
    }
    catch(NumberFormatException e) {
      e.printStackTrace();
    }

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

    lowerPanel = new JPanel();
    showQueryButton = new JButton("Show Query");
    showQueryButton.addActionListener(buttonClickHandler);
    executeQueryButton = new JButton("Execute Query");
    executeQueryButton.addActionListener(buttonClickHandler);
    goBackButton = new JButton("Go Back To Main Menu");
    goBackButton.addActionListener(buttonClickHandler);
    lowerPanel.add(showQueryButton);
    lowerPanel.add(executeQueryButton);
    lowerPanel.add(goBackButton);
    topStuffPanel.add(lowerPanel);

    add(topStuffPanel);

    textArea = new JTextArea ();
    textArea.setEditable(false);
    scroll = new JScrollPane (textArea, JScrollPane.VERTICAL_SCROLLBAR_ALWAYS, JScrollPane.HORIZONTAL_SCROLLBAR_ALWAYS);
    add(scroll);

    revalidate();
    repaint();
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
      else if(buttonThatWasClicked.getText() == "UPDATE DB") {
        System.out.println("This is not yet implemented!");
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
      else {
        drawQueryPerformScreen(buttonThatWasClicked.getText());
      }
    }
  }
}