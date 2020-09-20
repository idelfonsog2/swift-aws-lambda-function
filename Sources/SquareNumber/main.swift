import AWSLambdaRuntime

struct Input: Codable {
    let number: Double
}

struct Output: Codable {
    let result: Double
}

func customSquare(context: Lambda.Context, input: Input, callback: @escaping (Result<Output, Error>) -> Void) {
    callback(.success(Output(result: input.number * input.number)))
}

Lambda.run(customSquare)
