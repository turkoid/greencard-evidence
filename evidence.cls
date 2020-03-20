\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{evidence}[2018/03/06 green card evidence class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions*
\LoadClass{article}

\RequirePackage{geometry}
\geometry{margin=0.5in}

\RequirePackage{graphicx}

\RequirePackage{caption}
\captionsetup[figure]{labelformat=empty, justification=centering}

\RequirePackage[default,opentype]{sourcesanspro}

\RequirePackage{etoolbox}
\providetoggle{AddPageBreak}

\newcounter{photos}
\setcounter{photos}{0}

\newcommand{\evidencesection}[1]{
  \vspace*{\fill}
  \begin{center}
    \noindent\Huge{#1}
  \end{center}
  \vspace*{\fill}
  \newpage
}
\newcommand{\PhotoPageBreak}{
  \stepcounter{photos}
  \ifnumgreater{\value{photos}}{1}{
    \setcounter{photos}{0}
    \clearpage
  }{}
}

% Date, Location, Short Description, Description, Filename, Who
\newcommand{\photo}[6]{
  \begin{figure}
    \caption[\textbf{[#1 - #2]} #3]{\textbf{#1 - #2}\\#4}
    \centering
    \includegraphics[width=6in,height=3.8in,keepaspectratio]{photos/#5}
    \caption*{From left to right: #6}
  \end{figure}
  \PhotoPageBreak{}
}

\newcommand{\kakaoone}[2]{
  \begin{figure}
    \caption*{\textbf{Kakao Chat Logs}}
    \centering
    \begin{minipage}{0.5\textwidth}
      \centering
      \caption*{\textbf{#1}}
      \includegraphics[width=0.9\linewidth]{socialmedia/#2}
    \end{minipage}%
    \clearpage
  \end{figure}
}

\newcommand{\kakaotwo}[4]{
  \begin{figure}
    \caption*{\textbf{Kakao Chat Logs}}
    \centering
    \begin{minipage}{0.5\textwidth}
      \centering
      \caption*{\textbf{#1}}
      \includegraphics[width=0.9\linewidth]{socialmedia/#2}
    \end{minipage}%
    \begin{minipage}{0.5\textwidth}
      \centering
      \caption*{\textbf{#3}}
      \includegraphics[width=0.9\linewidth]{socialmedia/#4}
    \end{minipage}%
    \clearpage
  \end{figure}
}

\newcommand{\kakaothree}[6]{
  \begin{figure}
    \caption*{\textbf{Kakao Chat Logs}}
    \centering
    \begin{minipage}{0.33\textwidth}
      \centering
      \caption*{\textbf{#1}}
      \includegraphics[width=0.9\linewidth]{socialmedia/#2}
    \end{minipage}%
    \begin{minipage}{0.33\textwidth}
      \centering
      \caption*{\textbf{#3}}
      \includegraphics[width=0.9\linewidth]{socialmedia/#4}
    \end{minipage}%
    \begin{minipage}{0.33\textwidth}
      \centering
      \caption*{\textbf{#5}}
      \includegraphics[width=0.9\linewidth]{socialmedia/#6}
    \end{minipage}%
    \clearpage
  \end{figure}
}

% Date, Source, Short Description, Description, Filename
\newcommand{\socialmedia}[5]{
  \begin{figure}
    \caption[\textbf{[#1 - #2]} #3]{\textbf{#1 - #2}\\#4}
    \centering
    \includegraphics[width=6.0in,height=6.0in,keepaspectratio]{socialmedia/#5}
  \end{figure}
  \clearpage
}

% Date, Short Description, Description, Filename
\newcommand{\doc}[4]{
  \begin{figure}
    \caption[\textbf{[#1]} #2]{\textbf{#1}\\#3}
    \centering
    \includegraphics[width=7.0in,height=7.0in,keepaspectratio]{docs/#4}
  \end{figure}
  \clearpage
}
\pagenumbering{gobble}
\endinput