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

  private JLabel queryProblemLabel;
  private JLabel chooseDependentVariableLabel;
  private JLabel queryLabel;
  private JPanel queryQuestionPanel;
  private JComboBox<String> queryQuestionsComboBox;

  private BufferedReader buffReader;

  private String username;
  private String password;

  public QueriesDemoGUI(String username, String password) {
    super("QueriesDemoGUI");

    this.username = username;
    this.password = password;

    drawMainMenu();
  }

  void drawMainMenu() {
    buttonClickHandler = new ButtonClickHandler();

    setLayout(new GridLayout( 8, 1) );

    mainTitle = new JLabel("Queries Demo Main Menu");
    add(mainTitle);

    // Build and add first row of query buttons
    query1Button = new JButton( "1" );
    query1Button.addActionListener(buttonClickHandler);
    query2Button = new JButton( "2" );
    query2Button.addActionListener(buttonClickHandler);
    query3Button = new JButton( "3" );
    query4Button = new JButton( "4" );
    query5Button = new JButton( "5" );
    queriesRow1 = new JPanel();
    queriesRow1.add(query1Button);
    queriesRow1.add(query2Button);
    queriesRow1.add(query3Button);
    queriesRow1.add(query4Button);
    queriesRow1.add(query5Button);
    add(queriesRow1);

    // Build and add second row of query buttons
    query6Button = new JButton( " 6 " );
    query7Button = new JButton( " 7 " );
    query8Button = new JButton( " 8 " );
    query9Button = new JButton( " 9 " );
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
    getContentPane().removeAll();

    setLayout(new GridLayout( 5, 1) );

    mainTitle = new JLabel("Query " + whichQuery);
    add(mainTitle);


    ArrayList<String> queryData = new ArrayList<>(3);

    File queryFile = new File("./queries/" + whichQuery);

    try {
      buffReader = new BufferedReader(new FileReader(queryFile));

      StringBuilder partiallyLoadedQueryData = new StringBuilder();
      String line = buffReader.readLine();
      while (line != null) {
        while(!line.matches("!!!")){
          partiallyLoadedQueryData.append(line);
          partiallyLoadedQueryData.append(" ");
          line = buffReader.readLine();
        }
        queryData.add(partiallyLoadedQueryData.toString());
        partiallyLoadedQueryData = new StringBuilder();
        line = buffReader.readLine();
      }
    } catch(FileNotFoundException e) {
      e.printStackTrace();
    } catch(IOException e) {
      e.printStackTrace();
    }  
    
    queryProblemLabel = new JLabel(queryData.get(0));
    add(queryProblemLabel);

    queryQuestionPanel = new JPanel();
    chooseDependentVariableLabel = new JLabel(queryData.get(1));

    System.out.println(queryData.get(3));

    ArrayList<String> results = executeQuery(queryData.get(2), queryData.get(3));
    queryQuestionsComboBox = new JComboBox<>();
    for(String aResult: results) {
      queryQuestionsComboBox.addItem(aResult);
    }
    queryQuestionPanel.add(chooseDependentVariableLabel);
    queryQuestionPanel.add(queryQuestionsComboBox);
    add(queryQuestionPanel);

    queryLabel = new JLabel(queryData.get(4));
    add(queryLabel);

    revalidate();
    repaint();
  }

    ArrayList<String> executeQuery(String query, String resultAttribute) {

    OracleDataSource db       = null;
    Connection conn           = null;
    Statement stmt            = null;
    ResultSet rset            = null;
    ArrayList<String> results = new ArrayList<>();

    // Trim non alphabetic characters from resultAttribute
    String interestedAttribute = resultAttribute.replaceAll("[^a-zA-Z]+", "");

    try{
      db = new OracleDataSource();
      db.setURL("jdbc:oracle:thin:@//dbsvcs.cs.uno.edu:1521/ORCL.CS.UNO.EDU");
      db.setUser(username);
      db.setPassword(password);
      conn = db.getConnection();

      stmt = conn.createStatement();

      rset = stmt.executeQuery(query);

      while(rset.next()) {
        results.add(rset.getString(interestedAttribute));
      }

      stmt.close();
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
      else {
        drawQueryPerformScreen(buttonThatWasClicked.getText());
      }
    }
  }
}