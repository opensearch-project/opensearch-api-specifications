export type LibraryEvaluation = StoryEvaluation[]

export interface StoryEvaluation {
  result: Result
  display_path: string
  full_path: string
  description: string
  message?: string
  chapters: ChapterEvaluation[]
  epilogues?: ChapterEvaluation[]
  prologues?: ChapterEvaluation[]
}

export interface ChapterEvaluation {
  title: string
  overall: Evaluation
  request?: {
    parameters?: Record<string, Evaluation>
    requestBody?: Evaluation
  }
  response?: {
    status: Evaluation
    payload: Evaluation
  }
  updated_environment?: EvaluationEnvironment
}

export interface ChaptersEvaluations {
  evaluations: ChapterEvaluation[]
  final_environment: EvaluationEnvironment
}

export type EvaluationEnvironment = { [k: string]: any };

export interface Evaluation {
  result: Result
  message?: string
  error?: Error
}

export enum Result {
  PASSED = 'PASSED',
  FAILED = 'FAILED',
  SKIPPED = 'SKIPPED',
  ERROR = 'ERROR',
}
