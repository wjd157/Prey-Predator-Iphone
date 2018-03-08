//
//  GraphViewController.swift
//  PreyPredator
//
//  Created by William Daniels on 5/21/17.
//  Copyright © 2017 William Daniels. All rights reserved.
//

import UIKit
import QuartzCore

class GraphViewController: UIViewController, LineChartDelegate {
    
    
    //Deletes the old line and redraws the graph
    @IBAction func lioZeb(_ sender: UIButton) {
        lineChart.removeFromSuperview()
        drawGraph(graph: 1)
    }
    
    @IBAction func whaSal(_ sender: UIButton) {
        lineChart.removeFromSuperview()
        drawGraph(graph: 2)
    }
    
    @IBAction func beaSea(_ sender: UIButton) {
        lineChart.removeFromSuperview()
        drawGraph(graph: 3)
    }
    
    @IBAction func hawMou(_ sender: UIButton) {
        lineChart.removeFromSuperview()
        drawGraph(graph: 4)
    }
    
    var label = UILabel()
    var lineChart: LineChart!
    @IBOutlet weak var graphBehavior: UILabel!
    
    
    
    //Draws the graph
    func drawGraph(graph: Int){
        var views: [String: AnyObject] = [:]
        
        label.text = ""
        label.textColor = UIColor.white
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = NSTextAlignment.center
        self.view.addSubview(label)
        views["label"] = label
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[label]-|", options: [], metrics: nil, views: views))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-80-[label]", options: [], metrics: nil, views: views))
        
        var preyTemp: [CGFloat] = [CGFloat](repeating: 0.0, count: 250)
        var predTemp: [CGFloat] = [CGFloat](repeating: 0.0, count: 250)
               if(graph == 1){
                let graphs: (predators: [CGFloat], prey: [CGFloat]) = getGraph(preyInit: brain.lion, predInit: brain.zebra)
                predTemp = graphs.predators
                preyTemp = graphs.prey
                
                for x in 0..<250{
                    let preyCheck = graphs.prey[x]
                    let predCheck = graphs.predators[x]
                    print(predCheck)
                    if(predCheck == 0.0 && preyCheck == 0.0){
                        graphBehavior.text = "No Data"
                    }
                    else if(predCheck <= 0.0 && preyCheck != 0){
                        graphBehavior.text = "The population of lion will die out when they lack zebra"
                        break
                        
                    }
                    else if(preyCheck <= 0.0 && predCheck != 0){
                        graphBehavior.text = "The population of zebra will grow exponetially when there are no lion"
                        break
                    }
                    else{
                        graphBehavior.text = "The population of lion and zebra continuously balance each other out"
                    }
                }

        }
        else if(graph == 2){
                let graphs: (predators: [CGFloat], prey: [CGFloat]) = getGraph(preyInit: brain.killerWhale, predInit: brain.salmon)
                predTemp = graphs.predators
                preyTemp = graphs.prey
                for x in 0..<250{
                    let preyCheck = graphs.prey[x]
                    let predCheck = graphs.predators[x]
                    print(predCheck)
                    if(predCheck == 0.0 && preyCheck == 0.0){
                        graphBehavior.text = "No Data"
                    }
                    if(predCheck <= 0.0 && preyCheck != 0){
                        graphBehavior.text = "The population of killer whale will die out when they lack salmon"
                        break
                    }
                    if(preyCheck <= 0.0 && predCheck != 0){
                        graphBehavior.text = "The population of salmon will grow exponetially when there are no killer whale"
                        break
                    }
                    else{
                         graphBehavior.text = "The population of killer whale and salmon continuously balance each other out"
                    }
                }

            

        }
        else if(graph == 3){
                let graphs: (predators: [CGFloat], prey: [CGFloat]) = getGraph(preyInit: brain.polarBear, predInit: brain.ringedSeal)
                predTemp = graphs.predators
                preyTemp = graphs.prey
                for x in 0..<250{
                let preyCheck = graphs.prey[x]
                let predCheck = graphs.predators[x]
                print(predCheck)
                    if(predCheck == 0.0 && preyCheck == 0.0){
                        graphBehavior.text = "No Data"
                    }
                if(predCheck <= 0.0 && preyCheck != 0){
                    graphBehavior.text = "The population of polar bear will die out when they lack ringed seal"
                    break
                }
                if(preyCheck <= 0.0 && predCheck != 0){
                    graphBehavior.text = "The population of ringed seal will grow exponetially when there are no polar bear"
                    break
                }
                else{
                    graphBehavior.text = "The population of polar bear and ringed seal continuously balance each other out"
                }
        }

        }
        else if(graph == 4){
                let graphs: (predators: [CGFloat], prey: [CGFloat]) = getGraph(preyInit: brain.redTailedHawk, predInit: brain.mice)
                predTemp = graphs.predators
                preyTemp = graphs.prey
                for x in 0..<250{
                    let preyCheck = graphs.prey[x]
                    let predCheck = graphs.predators[x]
                    print(predCheck)
                    if(predCheck == 0.0 && preyCheck == 0.0){
                        graphBehavior.text = "No Data"
                    }
                    if(predCheck <= 0.0 && preyCheck != 0){
                        graphBehavior.text = "The population of red-tailed hawk will die out when they lack mice"
                        break
                    }
                    if(preyCheck <= 0.0 && predCheck != 0){
                        graphBehavior.text = "The population of mice will grow exponetially when there are no red-tailed hawk"
                        break
                    }
                    else{
                        graphBehavior.text = "The population of red-tailed hawk and mice continuously balance each other out"
                    }
                }
        }
        
        // simple line with custom x axis labels
        
        let xLabels: [String] = [String](repeating: "", count: 250)
        
        lineChart = LineChart()
        lineChart.animation.enabled = true
        lineChart.area = true
        lineChart.x.labels.visible = true
        lineChart.x.grid.count = 8
        lineChart.y.grid.count = 8
        lineChart.x.labels.values = xLabels
        lineChart.y.labels.visible = true
        lineChart.dots.visible = false
        lineChart.addLine(predTemp)
        lineChart.addLine(preyTemp)
        
        lineChart.translatesAutoresizingMaskIntoConstraints = false
        lineChart.delegate = self
        self.view.addSubview(lineChart)
        views["chart"] = lineChart
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[chart]-|", options: [], metrics: nil, views: views))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[label]-[chart(==200)]", options: [], metrics: nil, views: views))
        
        
        //        var delta: Int64 = 4 * Int64(NSEC_PER_SEC)
        //        var time = dispatch_time(DISPATCH_TIME_NOW, delta)
        //
        //        dispatch_after(time, dispatch_get_main_queue(), {
        //            self.lineChart.clear()
        //            self.lineChart.addLine(data2)
        //        });
        
        //        var scale = LinearScale(domain: [0, 100], range: [0.0, 100.0])
        //        var linear = scale.scale()
        //        var invert = scale.invert()
        //        println(linear(x: 2.5)) // 50
        //        println(invert(x: 50)) // 2.5
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    /**
     * Line chart delegate method.
     */
    func didSelectDataPoint(_ x: CGFloat, yValues: Array<CGFloat>) {
       // label.text = "Time: \(x)     Pop: \(yValues)"
    }
    
    
    
    /**
     * Redraw chart on device rotation.
     */
    override func didRotate(from fromInterfaceOrientation: UIInterfaceOrientation) {
        if let chart = lineChart {
            chart.setNeedsDisplay()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        graphBehavior.lineBreakMode = .byWordWrapping
        graphBehavior.numberOfLines = 2
        drawGraph(graph: 0)
    }
    
    //Returns a truple of arrays containing the data points
    func getGraph(preyInit: Double, predInit: Double) -> ([CGFloat],[CGFloat]){
       //These are the constants in the equations
        let a = 1.0
        let b = 1.0
        let c = 1.0
        let d = 1.0
        var prey = preyInit
        var pred = predInit
        var t = 0.0
        let delta = 0.1
        //These hold the population values
        var predData: [CGFloat] = [0]
        var preyData: [CGFloat] = [0]
        predData.removeAll()
        preyData.removeAll()
        //The data points are added here
        for _ in 0..<250{
            preyData.append(CGFloat(prey))
            predData.append(CGFloat(pred))
//            print("Prey = \(prey)")
//            print("Pred = \(pred)")
            t = t + delta
            //These equations represent the lotka-volterra equations
            let changePrey = (a * prey) - (b * prey * pred)
            let changePred = (-c * pred) + (d * prey * pred)
            prey = prey + changePrey * (t - t-delta)
            pred = pred + changePred * (t - t-delta)
            
        }
        return (predData, preyData)

    }
    
    
    
}
